using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using cakeslice;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.UI;

public class Npc : Interactable, IPickUpable, IManageable {

    [SerializeField] LineOfSightChecker eyes;
    List<GameObject> seenMonsters;
    float tempFontSize;
    string tempMessage;
    //*/
    //*
    [HideInInspector] public LineOfSightGetCollisions iballs;

    // */
    NpcState curState;

    public float vision;
    [SerializeField] float speed;
    [SerializeField] float tolerance;
    [SerializeField] int money;
    [SerializeField] float startInterest;
    [HideInInspector] public float interest;
    public float maxInterest = 100;
    [SerializeField] float baseInterest;

    [SerializeField] float idleWaitTime = 10;

    List<Room> visitedRooms = new List<Room>();

    Room curRoom;

    public Room CurRoom { get => curRoom; }

    public PathFollower follower;

    public static event Action<Npc, Room> OnEnterRoom;

    [HideInInspector] public bool locked;

    Rigidbody rb;
    Collider col;
    Vector3 startPos;

    public Node exitNode;

    //TODO: replace next two bools with scared state trigger
    private bool isScared => curState.IsScared();
    private bool isRunning => curState.IsRunning();

    public Node lobbyNode;

    [HideInInspector] public bool isBuying = false;

    public List<Node> nodesToAvoid;

    public GameObject ragdollVersion;

    public bool isDead;

    [SerializeField] TMPro.TMP_Text message;

    const string happy = "O";
    const int wallLayer = 1 << 12; //might need to invert

    public float weight => 1;

    public GameObject obj => gameObject;

    public enum SoundType { Death, Scream, Talk }
    public SoundType soundType;

    public string deathSound, screamSound, talkSound;
    public bool randomSound;

    public Animator animControl;

    public static List<Npc> Active = new List<Npc>();

    public float alertTimer = 6;

    public int buyerID;

    public int baseInterestIncrease = 10;

    // [SerializeField] GameObject deadNpc;

    void Awake() {
        //
        eyes = new LineOfSightChecker(this, vision);
        tempFontSize = message.fontSize;
        //

        follower = GetComponent<PathFollower>();
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
        this.AddToManager();
        Debug.Log(name+" added");
        startPos = transform.position;
        gameObject.SetActive(false);
        StartWandering();
    }

    public void Spawn() {
        Debug.Log(name + " spawn");
        Unlock();
        ResetAnimParams();
        SetMessage("");
        Active.Add(this);
        GoToNode(lobbyNode);
    }

    public void GoToRoom(string room) {
        GoToRoom(Room.GetRoom(room));
    }

    public void GoToRoom(Room r) {
        curState?.Exit();
        curState = new MoveTowardsState(this, r.RandomNode());
    }

    public void GoToNode(string node) {
        GoToNode(Node.Get(node));
    }

    public void GoToNode(Node node) {
        curState?.Exit();
        curState = new MoveTowardsState(this, node);
    }

    public void Buy(Player p) {
        GameManager.When(name, "buy");
        int m = money;
        m = CalculateSell(InterestPercent());
        p.ChangeMoney(m);
        SetMessage(happy, Color.yellow);
        SetState(new WanderState(this));
        SetState(new LeaveState(this, exitNode));
    }

    public int CalculateSell(float percent) {
        if (percent >= 1) {
            return money * 2;
        } else if (percent >= 0.75f) {
            return (int) (money * 1.5f);
        }

        return money;
    }

    public void Chat(Player p, Image timer, float chatTime) {
        SetState(new ChattingState(this, chatTime, p, timer, curState));
    }

    /// <summary>
    /// Interact based on the current state
    /// </summary>
    public override void Interact(Player p) {
        curState.OnInteract(p);
    }

    void Update() {

        List<GameObject> m = eyes.CheckMonsters();
        bool seesMonsters = m.Count > 0;

        if (InterestPercent() >= 1 && !isBuying && !seesMonsters) // no buying when scared
        {
            ReadyToBuy();
            isBuying = true;
        } else if (seesMonsters) {
            GameManager.When(name, "seemonster", m.Select(x => x.name).ToArray());
            Debug.Log("GetScared");
            Debug.Log(m[0].name);
            Monster mon = m.FirstOrDefault(x => x.GetComponent<Monster>() != null)?.GetComponent<Monster>();
            GetScared(mon);

        }

        curState?.StateUpdate();

        if (isDead) {
            Die();
        }

    }

    private void DebugMessage() {
        if (Input.GetKey(KeyCode.Tab) && !isBuying) {
            Debug.Log("NPC_Info_Updated:" + name);
            tempMessage = message.text;
            string npcInfo;
            npcInfo = name + "\n isScared?:" + isScared + "\n Dest. :" + follower.end.name + "\n Interest:" + interest.ToString();
            message.fontSize = .1f;
            SetMessage(npcInfo, Color.blue);
            //message.fontSize = temp;
        } else if (Input.GetKeyUp(KeyCode.Tab)) {
            message.fontSize = tempFontSize;
            SetMessage(tempMessage);
        }
    }

    public void SetState(NpcState state) {
        curState?.Exit();
        curState = state;
    }

    public void StartWandering() {
        curState?.Exit();
        curState = new WanderState(this, idleWaitTime, nodesToAvoid);
    }

    public void SetSpeed(float speed) {
        this.speed = speed;
        follower.speed = this.speed;
    }

    public void SetSpeed(Func<float, float> f) {
        this.speed = f(this.speed);
        follower.speed = this.speed;
    }

    /// <summary>
    /// Called when the buyer enters a room
    /// </summary>
    /// <param name="r"></param>
    public void EnterRoom(Room r) {
        if (isScared || isRunning) { return; }
        if (!visitedRooms.Contains(r)) {
            visitedRooms.Add(r);
            float roomInterest = EvaluateRoom(r);
            interest += roomInterest;
        }
        if (OnEnterRoom != null) { OnEnterRoom(this, r); }
        GameManager.When(name, "enter", r.name);
        if (interest <= 0) {
            curState = new LeaveState(this, exitNode);
        }
    }

    public void GetScared(Monster m) {
        GetScared(alertTimer);
        m?.SeeBuyer(this);
    }

    public void GetScared(float scareTime) {
        if (curState.IsScared()) { return; }
        GameManager.When(name, "scared");
        Lock();
        curState?.Exit();
        curState = new ScaredState(this, 6);
    }

    public void RunToExit() {

        curState?.Exit();
        // curState = new ScaredState(this, exitNode);
        curState = new FleeState(this, exitNode);
    }

    public void ReadyToBuy() {
        GameManager.When(name, "readytobuy");
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

    public DeadNpc Die() {
        GameManager.When(name, "die");
        soundType = SoundType.Death;
        PlayDeathSound();
        DeadNpc d = GameObject.Instantiate(ragdollVersion, transform.position, transform.rotation).GetComponentInChildren<DeadNpc>();
        gameObject.SetActive(false);
        Npc.Active.Remove(this);
        return d;
    }

    // public void Die()
    // {
    //     SetState(new DeadState(this, ragdollVersion));
    //     GameObject d = Instantiate(deadNpc,transform.position,transform.rotation);
    //     Destroy(gameObject);
    // }

    public void SetMessage(string s, Color c) {
        message.text = s;
        message.color = c;
    }

    public void SetMessage(string s) {
        SetMessage(s, Color.black); // should it default to black or keep last color?

    }

    public void ExitHouse() {
        GameManager.When(name, "exit");
        ResetStats();
        gameObject.SetActive(false);
        Active.Remove(this);
        Lock();
        

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
            Die();
        }
    }

    public void Release(ICanHold h) {
        rb.AddForce(h.GetThrowDir());
    }

    public void PlayScreamSound() {
        if (name.StartsWith("npc.nerd")) {
            screamSound = "NerdScream";
            gameObject.PlaySound(screamSound);
        } else {
            screamSound = "PoshScream";
            gameObject.PlaySound(screamSound);
        }
    }

    private void PlayDeathSound() {
        if (name.StartsWith("npc.nerd")) {
            deathSound = "NerdDeath";
            gameObject.PlaySound(deathSound);
        } else {
            deathSound = "Death1";
            gameObject.PlaySound(deathSound);

        }
    }

    private void PlayTalkSound() {
        if (soundType == SoundType.Talk) {
            if (name.StartsWith("npc.nerd")) {
                talkSound = "NerdTalk";
                gameObject.PlaySound(talkSound);
            } else {
                talkSound = "PoshTalk";
                gameObject.PlaySound(talkSound);
            }
        }
    }

    public void ResetAnimParams() {
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

    public void Do(DoEvent de) {
        new DoEventBuyer(this).Do(de);
    }

    void ResetStats() {
        interest = startInterest;
    }

    public float InterestPercent() {
        return (float) (interest) / (maxInterest);
    }

    public string DisplayName() {
        string s = name.Split('.').Last();
        return char.ToUpper(s[0]) + s.Substring(1);
    }
}