using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WanderState : NpcState {

    float timeUntilMove;
    float waitTime;
    float defaultTime = 5;

    List<Node> nodesToAvoid;

    public WanderState(Npc npc, float waitTime) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = 0;
        Enter();

        npc.ResetAnimParams();
    }

    public WanderState(Npc npc, float waitTime, List<Node> avoids) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = 1;
        nodesToAvoid = avoids;
        Enter();

        npc.ResetAnimParams();
    }

    public WanderState(Npc npc) : base(npc) {
        this.waitTime = 5;
        timeUntilMove = waitTime;

        npc.ResetAnimParams();
    }

    public override void StateUpdate() {
        if (!npc.follower.moving) {
            npc.ResetAnimParams();
            timeUntilMove -= Time.deltaTime;
        }
        if (timeUntilMove <= 0 && !npc.locked) {
            MoveToRandomNeighbor();
            timeUntilMove = waitTime;

            npc.ResetAnimParams();
            npc.animControl.SetBool("isWalking", true);
        }
    }

    private void MoveToRandomNeighbor() {

        SetFollower(npc.follower.ClosestNode().RandomUnblockedNeighbor());

    }

    public override void Enter() {

    }

    public override void Exit() {

    }

}