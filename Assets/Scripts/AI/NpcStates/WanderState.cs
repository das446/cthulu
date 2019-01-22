using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "States/Wander")]
public class WanderState : NpcState {

    float timeUntilMove;
    float waitTime;
    float defaultTime = 5;

    public WanderState(Npc npc, float waitTime) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = waitTime;
        Enter();
    }

    public WanderState(Npc npc) : base(npc) {
        Debug.Log("Constructor");
        this.waitTime = defaultTime;
        timeUntilMove = waitTime;
    }

    public override void FrameUpdate() {
        timeUntilMove -= Time.deltaTime;
        if (timeUntilMove <= 0 && !npc.interacting) {
            MoveToRandomNeighbor();
            timeUntilMove = waitTime;
        }
    }

    private void MoveToRandomNeighbor() {
        SetFollower(npc.follower.ClosestNode().RandomNeighbor());
    }

    public override void Enter() {

    }

    public override void Exit() {

    }

}