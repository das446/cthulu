using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using cakeslice;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.UI;

public class Npc : Interactable, IPickUpable, IManageable
{

    //* 
    LineOfSightChecker eyes;
    List<GameObject> seenMonsters;
    float temp;
    string stemp;
    //*/
    //*
    public LineOfSightGetCollisions iballs;
    
    // */
    NpcState curState;

    public float vision;
    [SerializeField] float speed;
    [SerializeField] float tolerance;
    [SerializeField] int money;
    public float interest;
    [SerializeField] float baseInterest;

    [SerializeField] float idleWaitTime = 10;

    List<Room> visitedRooms = new List<Room>();

    [SerializeField] Room curRoom;

    public float Speed { get => speed; }
    public Room CurRoom { get => curRoom; }

    public PathFollower follower;

    public static event Action<Npc, Room> OnEnterRoom;

    public bool locked;

    Rigidbody rb;
    Collider col;
    Vector3 startPos;

    public Node exitNode;

    //TODO: replace next two bools with scared state trigger
    public bool isScared = false;
    public bool isRunning = false;

    public Node lobbyNode;

    public bool isBuying = false;

    public List<Node> nodesToAvoid;

    public DeadNpc ragdollVersion;

    public bool isDead;

    [SerializeField] TMPro.TMP_Text message;

    const string happy = "O";
    const int wallLayer = 1 << 12; //might need to invert

    public float weight => 1;

    public GameObject obj => gameObject;

    public enum SoundType { Death, Scream, Talk };
    public SoundType soundType;

    public string deathSound, screamSound, talkSound;
    public bool randomSound;

    public Animator animControl;

    public static List<Npc> Active = new List<Npc>();

    public float alertTimer = 6;

    public int buyerID;

    // [SerializeField] GameObject deadNpc;

    void Awake()
    {
        //
        eyes = new LineOfSightChecker(this, vision);
        temp = message.fontSize;
        //

        follower = GetComponent<PathFollower>();
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
        this.AddToManager();
        startPos = transform.position;
        gameObject.SetActive(false);
    }

    public void Spawn()
    {
        transform.position = startPos;
        StartWandering();
        Active.Add(this);
    }

    public void GoToRoom(string room)
    {
        GoToRoom(Room.GetRoom(room));
    }

    public void GoToRoom(Room r)
    {
        curState?.Exit();
        curState = new MoveTowardsState(this, r.RandomNode());
    }

    public void GoToNode(string node)
    {
        GoToNode(Node.Nodes.First(x => x.name == node));
    }

    public void GoToNode(Node node)
    {
        curState?.Exit();
        curState = new MoveTowardsState(this, node);
    }

    public void Buy(Player p)
    {
        p.ChangeMoney(money);
        SetMessage(happy, Color.yellow);
        SetState(new LeaveState(this, exitNode));
    }

    /// <summary>
    /// Interact based on the current state
    /// </summary>
    public override void Interact(Player p)
    {
        curState.OnInteract(p);
    }

    void Update()
    {

        //* 
        if (Input.GetKey(KeyCode.Tab) && !isBuying)
        {
            Debug.Log("NPC_Info_Updated:" + name);
            stemp = message.text;
            string npcInfo;
            npcInfo = name + "\n isScared?:" + isScared + "\n Dest. :" + follower.end.name + "\n Interest:" + interest.ToString();
            message.fontSize = .1f;
            SetMessage(npcInfo, Color.blue);
            //message.fontSize = temp;
        }
        else if (Input.GetKeyUp(KeyCode.Tab))
        {
            message.fontSize = temp;
            SetMessage(stemp);
        }

        seenMonsters = eyes.CheckMonsters(iballs.cols);

        if (seenMonsters.Count != 0)
        {
            Debug.Log("Seen Monster");
            isScared = true;
            // Debug.Log("NPC is scared");
        }
        //*/

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            interest = 100;
        }

        if (interest >= 100 && !isBuying && !isScared) // no buying when scared
        {
            ReadyToBuy();
            isBuying = true;
        }
        if (isScared && !isRunning)
        {
            Alerted();
            alertTimer -= Time.deltaTime;
            if (alertTimer <= 0)
            {
                RunToExit();
                isRunning = true;
            }

        }
        if (isDead)
        {
            Die();
        }



        /*  if (Input.GetKeyDown(KeyCode.A))
         {
             gameObject.PlaySound("Test");
             Debug.Log("!");
         }
         */

        curState?.StateUpdate();

    }

    public void SetState(NpcState state)
    {
        curState = state;
    }

    public void StartWandering()
    {
        curState?.Exit();
        curState = new WanderState(this, idleWaitTime, nodesToAvoid);
    }

    /// <summary>
    /// Called when the buyer enters a room
    /// </summary>
    /// <param name="r"></param>
    public void EnterRoom(Room r)
    {
        if (!visitedRooms.Contains(r))
        {
            visitedRooms.Add(r);
            float roomInterest = EvaluateRoom(r);
            interest += roomInterest;
        }
        if (OnEnterRoom != null) { OnEnterRoom(this, r); }
    }

    public void Alerted()
    {
        soundType = SoundType.Scream;
        PlaySoundHere();
        Lock();
        curState?.Exit();
        curState = new ScaredState(this);
    }

    public void RunToExit()
    {

        speed = speed * 3;
        curState?.Exit();
        // curState = new ScaredState(this, exitNode);
        curState = new FleeState(this, exitNode);
    }

    public void ReadyToBuy()
    {
        curState?.Exit();
        curState = new BuyState(this, lobbyNode);
        Debug.Log("Cur state = buy");
    }

    public void LeaveBuyState()
    {
        Debug.Log("NPC waited too long");
        interest -= 20;
        StartWandering();
        isBuying = false;
        SetMessage("");
    }

    /// <summary>
    /// Keeps npc from moving
    /// </summary>
    public void Lock()
    {
        rb.useGravity = false;
        rb.isKinematic = false;
        col.enabled = false;
        locked = true;
        follower.Stop();

        //transform.GetChild(0).GetComponent<Animator>().SetBool("Walking",false);

    }

    /// <summary>
    /// Lets npc move again
    /// </summary>
    public void Unlock()
    {
        rb.useGravity = true;
        rb.isKinematic = true;
        col.enabled = true;
        locked = false;

        //transform.GetChild(0).GetComponent<Animator>().SetBool("Walking",true);
    }

    float EvaluateRoom(Room r)
    {
        //interest starts at 20
        //int interest = 20;
        //int fDist = 1;

        float interest = baseInterest;

        List<IEvaluated> items = GetEvaluatedObjects();

        for (int i = 0; i < items.Count; i++)
        {
            interest += items[i].Evaluate(this, r);
        }
        Debug.Log(name + " interest increased by " + interest);
        return interest;

    }

    private List<IEvaluated> GetEvaluatedObjects()
    {
        Collider[] cols = Physics.OverlapSphere(transform.position, vision, wallLayer);
        List<IEvaluated> items = new List<IEvaluated>();
        for (int i = 0; i < cols.Length; i++)
        {
            IEvaluated ev = cols[i].GetComponent<IEvaluated>();
            if (ev != null)
            {
                items.Add(ev);
            }

        }

        return items;
    }

    public void Die()
    {
        GameManager.When(name, "die");
        soundType = SoundType.Death;
        PlaySoundHere();
        SetState(new DeadState(this, ragdollVersion));
    }
    // public void Die()
    // {
    //     SetState(new DeadState(this, ragdollVersion));
    //     GameObject d = Instantiate(deadNpc,transform.position,transform.rotation);
    //     Destroy(gameObject);
    // }

    public void Die(ICanHold h)
    {
        GameManager.When(name, "die");
        SetState(new DeadState(this, ragdollVersion, h));
    }

    public void SetMessage(string s, Color c)
    {
        message.text = s;
        message.color = c;
    }

    public void SetMessage(string s)
    {
        SetMessage(s, Color.black); // should it default to black or keep last color?

    }

    public void ExitHouse()
    {
        gameObject.SetActive(false);
        Active.Remove(this);
        GameManager.When(name, "exit");
        ResetStats();
    }

    public void Spawn(Node n)
    {
        Npc npc = Instantiate(this, n.transform.position + Vector3.up, Quaternion.identity);
        npc.exitNode = n;
        npc.SetState(new WanderState(npc, 10));
    }

    void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, vision);
    }

    public bool CanBePickedUp(ICanHold h)
    {
        return true;
        //return is Monster
    }

    public void GetPickedUp(ICanHold h)
    {
        if (CanBePickedUp(h))
        {
            Die(h);
        }
    }

    public void Release(ICanHold h)
    {
        rb.AddForce(h.GetThrowDir());
    }

    public void PlaySoundHere()
    {
        if (soundType == SoundType.Scream)
        {

            if (name.StartsWith("npc.nerd"))
            {
                screamSound = "NerdScream";
                gameObject.PlaySound(screamSound);
            }
            else
            {
                screamSound = "PoshScream";
                gameObject.PlaySound(screamSound);
            }
        }
        else if (soundType == SoundType.Death)
        {
            if (name.StartsWith("npc.nerd"))
            {
                deathSound = "NerdDeath";
                gameObject.PlaySound(deathSound);
            }
            else
            {
                deathSound = "Death1";
                gameObject.PlaySound(deathSound);

            }

        }
        else if(soundType == SoundType.Talk)
        {
            if(name.StartsWith("npc.nerd"))
            {
                talkSound = "NerdTalk";
                gameObject.PlaySound(talkSound);
            }
            else
            {
                talkSound = "PoshTalk";
                gameObject.PlaySound(talkSound);
            }
        }
    }



    public void resetAnimParams()
    {
        animControl.SetBool("isWalking", false);
        animControl.SetBool("isTalking", false);
        animControl.ResetTrigger("isSitting");
        animControl.SetBool("isCurious", false);
        animControl.SetBool("isInspecting", false);
        animControl.SetBool("isScared", false);
        animControl.SetBool("gotScared", false);
        animControl.SetBool("isPossessed", false);
        animControl.ResetTrigger("isBitten");
        animControl.ResetTrigger("isSacrificed");
        animControl.ResetTrigger("gotPossessed");
    }

    public void Do(DoEvent de)
    {
        new DoEventBuyer(this).Do(de);
    }

    void ResetStats()
    {

    }
}
