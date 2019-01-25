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

    /// <summary>
    /// Author: Victor Liu
    /// </summary>
    public void runToExit()
    {
        curState.Exit();
        curState = new ScaredState(this, exitNode);
    }

    float EvaluateRoom(Room r) {

        return 0;

    }
}