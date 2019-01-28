using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;

public class Npc : Interactable {

    NpcState curState;

    [SerializeField] float vision;
    [SerializeField] float speed;
    [SerializeField] float tolerance;
    [SerializeField] float interest;

    [SerializeField] float idleWaitTime = 10;

    List<Room> visitedRooms = new List<Room>();

    [SerializeField] Room curRoom;

    public float Speed { get => speed; }
    public Room CurRoom { get => curRoom; }

    public PathFollower follower;

    public static event Action<Npc, Room> OnEnterRoom;

    public bool interacting;

    public Node exitNode;
    //replace next two bools with scared state trigger
    public bool isScared = false;
    public bool isRunning = false;

    public Node lobbyNode;
    
    public bool isBuying = false;

    void Start() {
        curState = new WanderState(this, idleWaitTime);
        follower = GetComponent<PathFollower>();
    }

    /// <summary>
    /// Interact based on the current state
    /// </summary>
    public override void Interact(Player p) {
        Debug.Log("Interact");
        curState.OnInteract(p);
    }

    void Update() {
        if(interest >= 100 && !isBuying)
        {
            Debug.Log("NPC ready to buy");
            ReadyToBuy();
            isBuying = true;
        }
        if(isScared && !isRunning)
        {
            Debug.Log("NPC is scared");
            RunToExit();
            isRunning = true;
        }
        curState?.FrameUpdate();
    }

    public void SetState(NpcState state) {
        curState = state;
    }

    public void EnterRoom(Room r) {
        if (!visitedRooms.Contains(r)) {
            visitedRooms.Add(r);
            float roomInterest = EvaluateRoom(r);
            interest += roomInterest;
        }
        if (OnEnterRoom != null) { OnEnterRoom(this, r); }
    }

    public void GoToRoom(Room r) {
        curState.Exit();
        curState = new MoveTowardsState(this, r.RandomNode());
    }

    public void RunToExit()
    {
        speed = speed*3;
        curState.Exit();
        curState = new ScaredState(this, exitNode);
    }

    public void ReadyToBuy()
    {
        curState.Exit();
        curState = new BuyState(this, lobbyNode);
    }

    public void LeaveBuyState()
    {
        Debug.Log("NPC waited too long");
        interest -= 20;
        curState.Exit();
        curState = new WanderState(this, idleWaitTime);
        isBuying = false;
    }

    float EvaluateRoom(Room r) {

        return 0;

    }
}