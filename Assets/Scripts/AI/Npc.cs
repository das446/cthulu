using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.UI;

public class Npc : Interactable, IPickUpable, IManageable {

    //* 
    LineOfSightChecker eyes;
    bool seenPortal;
    List<Monster> seenMonster;
    //*/
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
    //replace next two bools with scared state trigger
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

    public int soundType;
    public bool playSound;
    public string deathSound, screamSound;
    public bool randomSound;

    public static List<Npc> Active = new List<Npc>();

    // [SerializeField] GameObject deadNpc;

    void Awake() {

        eyes = new LineOfSightChecker(this,vision);

        follower = GetComponent<PathFollower>();
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
        this.AddToManager();
        startPos = transform.position;
        gameObject.SetActive(false);
    }

    public void Spawn() {
        gameObject.PlaySound("PoshManEnters");
        transform.position = startPos;
        StartWandering();
        Active.Add(this);
    }

    public void GoToRoom(string room) {
        GoToRoom(Room.GetRoom(room));
    }

    public void Buy(Player p) {
        p.ChangeMoney(money);
        SetMessage(happy, Color.yellow);
        SetState(new LeaveState(this, exitNode));
    }

    /// <summary>
    /// Interact based on the current state
    /// </summary>
    public override void Interact(Player p) {
        curState.OnInteract(p);
    }

    void Update() {

//* 
        seenPortal =  eyes.CheckPortals();
        seenMonster = eyes.CheckMonsters();

        if ( seenMonster.Count != 0 )
        {
            isScared = true;
        }
//*/

        if (Input.GetKeyDown(KeyCode.Alpha1)) {
            interest = 100;
        }

        if (interest >= 100 && !isBuying) {
            ReadyToBuy();
            isBuying = true;
        }
        if (isScared && !isRunning) {
            Debug.Log("NPC is scared");
            playSound = true;
            soundType = 1;
            PlaySoundHere();
            RunToExit();
            isRunning = true;
        }
        if (isDead) {
            playSound = true;
            soundType = 0;
            PlaySoundHere();
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

    public void SetState(NpcState state) {
        curState = state;
    }

    public void StartWandering() {
        curState?.Exit();
        curState = new WanderState(this, idleWaitTime, nodesToAvoid);
    }

    /// <summary>
    /// Called when the buyer enters a room
    /// </summary>
    /// <param name="r"></param>
    public void EnterRoom(Room r) {
        if (!visitedRooms.Contains(r)) {
            visitedRooms.Add(r);
            float roomInterest = EvaluateRoom(r);
            interest += roomInterest;
        }
        if (OnEnterRoom != null) { OnEnterRoom(this, r); }
    }

    public void GoToRoom(Room r) {
        curState?.Exit();
        curState = new MoveTowardsState(this, r.RandomNode());
    }

    public void RunToExit() {
        speed = speed * 3;
        curState?.Exit();
        curState = new ScaredState(this, exitNode);
    }

    public void ReadyToBuy() {
        curState?.Exit();
        curState = new BuyState(this, lobbyNode);
        Debug.Log("Cur state = buy");
    }

    public void LeaveBuyState() {
        Debug.Log("NPC waited too long");
        interest -= 20;
        StartWandering();
        isBuying = false;
        SetMessage("");
    }

    /// <summary>
    /// Keeps npc from moving
    /// </summary>
    public void Lock() {
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
    public void Unlock() {
        rb.useGravity = true;
        rb.isKinematic = true;
        col.enabled = true;
        locked = false;

        //transform.GetChild(0).GetComponent<Animator>().SetBool("Walking",true);
    }

    float EvaluateRoom(Room r) {
        //interest starts at 20
        //int interest = 20;
        //int fDist = 1;

        float interest = baseInterest;

        List<IEvaluated> items = GetEvaluatedObjects();

        for (int i = 0; i < items.Count; i++) {
            interest += items[i].Evaluate(this, r);
        }
        Debug.Log(name + " interest increased by " + interest);
        return interest;

    }

    private List<IEvaluated> GetEvaluatedObjects() {
        Collider[] cols = Physics.OverlapSphere(transform.position, vision, wallLayer);
        List<IEvaluated> items = new List<IEvaluated>();
        for (int i = 0; i < cols.Length; i++) {
            IEvaluated ev = cols[i].GetComponent<IEvaluated>();
            if (ev != null) {
                items.Add(ev);
            }

        }

        return items;
    }

    public void Die() {
        GameManager.When(name,"die");
        SetState(new DeadState(this, ragdollVersion));
    }
    // public void Die()
    // {
    //     SetState(new DeadState(this, ragdollVersion));
    //     GameObject d = Instantiate(deadNpc,transform.position,transform.rotation);
    //     Destroy(gameObject);
    // }

    public void Die(ICanHold h) {
        GameManager.When(name,"die");
        SetState(new DeadState(this, ragdollVersion, h));
    }

    public void SetMessage(string s, Color c) {
        message.text = s;
        message.color = c;
    }

    public void SetMessage(string s) {
        SetMessage(s, Color.black); // should it default to black or keep last color?

    }

    public void ExitHouse() {
        gameObject.SetActive(false);
        Active.Remove(this);
    }

    public void Spawn(Node n) {
        Npc npc = Instantiate(this, n.transform.position + Vector3.up, Quaternion.identity);
        npc.exitNode = n;
        npc.SetState(new WanderState(npc, 10));
    }

    void OnDrawGizmos() {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, vision);
    }

    public bool CanBePickedUp(ICanHold h) {
        return true;
        //return is Monster
    }

    public void GetPickedUp(ICanHold h) {
        if (CanBePickedUp(h)) {
            Die(h);
        }
    }

    public void Release(ICanHold h) {
        rb.AddForce(h.GetThrowDir());
    }

    public void PlaySoundHere() {
        if (playSound && soundType == 0) {
            if (randomSound) {
                string[] screams = new string[] { "PoshScream", "OffensiveScream" };
                string scream = screams.RandomItem();
                gameObject.PlaySound(scream);
                playSound = false;
            } else {
                gameObject.PlaySound(screamSound);
                playSound = false;
            }
        } else if (playSound && soundType == 1) {
            if (randomSound) {
                string[] screams = new string[] { "Death1", "Death2", "Death3" };
                string scream = screams.RandomItem();
                gameObject.PlaySound(scream);
                playSound = false;
            } else {
                gameObject.PlaySound(deathSound);
                playSound = false;
            }
        }
    }

    public void Do(DoEvent de) {
        new DoEventBuyer(this).Do(de);
    }
}