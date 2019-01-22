using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "States/Wander")]
public class WanderState : NpcState {

    float timeUntilMove;
    float waitTime;

    public WanderState(Npc npc, float waitTime) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = waitTime;
        Enter();
    }

    public override void FrameUpdate() {
        timeUntilMove -= Time.deltaTime;
        if (timeUntilMove <= 0) {
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