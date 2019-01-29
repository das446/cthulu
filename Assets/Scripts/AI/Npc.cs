using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;
using UnityEngine.UI;

public class Npc : Interactable {

    NpcState curState;

    public float vision;
    [SerializeField] float speed;
    [SerializeField] float tolerance;
    [SerializeField] int money;
    public float interest;

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

    public Node exitNode;
    //replace next two bools with scared state trigger
    public bool isScared = false;
    public bool isRunning = false;

    public Node lobbyNode;

    public bool isBuying = false;

    public List<Node> nodesToAvoid;

    [SerializeField] Text message;

    const string happy = "☻";

    void Start() {
        StartWandering();
        follower = GetComponent<PathFollower>();
        rb = GetComponent<Rigidbody>();
        col = GetComponent<Collider>();
    }

    public void Buy(Player p)
    {
        p.ChangeMoney(money);
        SetMessage(happy,Color.yellow);
        SetState(new LeaveState(this, exitNode));
    }

    /// <summary>
    /// Interact based on the current state
    /// </summary>
    public override void Interact(Player p) {
        Debug.Log("Interact");
        curState.OnInteract(p);
    }

    void Update() {

        if(Input.GetKeyDown(KeyCode.Alpha1)){
            interest = 100;
        }

        if (interest >= 100 && !isBuying) {
            ReadyToBuy();
            isBuying = true;
        }
        if (isScared && !isRunning) {
            Debug.Log("NPC is scared");
            RunToExit();
            isRunning = true;
        }
        curState?.FrameUpdate();

    }

    public void SetState(NpcState state) {
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
    public void EnterRoom(Room r) {
        if (!visitedRooms.Contains(r)) {
            visitedRooms.Add(r);
            float roomInterest = EvaluateRoom(r);
            interest += roomInterest;
        }
        if (OnEnterRoom != null) { OnEnterRoom(this, r); }
        CheckSeeMonster();
    }

    public void GoToRoom(Room r) {
        curState.Exit();
        curState = new MoveTowardsState(this, r.RandomNode());
    }

    public void RunToExit() {
        speed = speed * 3;
        curState.Exit();
        curState = new ScaredState(this, exitNode);
    }

    public void ReadyToBuy() {
        curState.Exit();
        curState = new BuyState(this, lobbyNode);
        Debug.Log("Cur state = buy");
    }

    public void LeaveBuyState() {
        Debug.Log("NPC waited too long");
        interest -= 20;
        StartWandering();
        isBuying = false;
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

    public List<Monster> CheckSeeMonster() {
        return new LineOfSightChecker(this, vision).CheckMonsters();
    }

    float EvaluateRoom(Room r) {
        //interest starts at 20
        //int interest = 20;
        //int fDist = 1;
        foreach (Furniture f in r.furniture) {
            if (f.health < 10) {
                interest--;
            }
        }

        if (SeePortal(r)) {
            interest -= 10;
        }

        if (SeeMonster(r)) {
            interest = 0;
        }

        return interest;
    }

    public bool SeeMonster(Room r) {
        return (CheckSeeMonster() == null) ? false : true;
    }

    public bool SeePortal(Room r) {
        return new LineOfSightChecker(this, vision).CheckPortals();
    }

    public void Die(){
        SetState(new DeadState(this));
    }

    public void SetMessage(string s, Color c){
        message.text = s;
        message.color = c;
    }

    public void SetMessage(string s){
        SetMessage(s,Color.black);// should it default to black or keep last color?

    }

    public void ExitHouse()
    {
        Destroy(gameObject);
    }
}