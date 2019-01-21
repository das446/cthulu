using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;

public class Npc : Interactable {

    [SerializeField] NpcState curState;

    [Header("States")]
    WanderState Wander;
    MoveTowardsState moveTowards;

    [SerializeField] float vision;
    [SerializeField] float speed;
    [SerializeField] float tolerance;
    [SerializeField] float interest;

    

    List<Room> visitedRooms;

    public static event Action<Npc, Room> OnEnterRoom;

    public override void Interact(Player p) {
        Debug.Log("Interact");
        curState.OnInteract(p);
    }

    void Update() {
        curState?.FrameUpdate();
    }

    void EnterRoom(Room r) {
        if (!visitedRooms.Contains(r)) {
            visitedRooms.Add(r);
            float roomInterest = EvaluateRoom(r);
            interest += roomInterest;
        }
        OnEnterRoom(this, r);
    }

    public void GoToRoom(Room r)
    {
        curState.Exit();
        curState = new MoveTowardsState(r.RandomNode());
    }

    float EvaluateRoom(Room r) {

        return 0;

    }
}