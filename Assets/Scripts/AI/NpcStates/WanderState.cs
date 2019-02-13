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
    }

    public WanderState(Npc npc, float waitTime, List<Node> avoids) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = 1;
        nodesToAvoid = avoids;
        Enter();
    }

    public WanderState(Npc npc) : base(npc) {
        this.waitTime = 5;
        timeUntilMove = waitTime;
    }

    public override void StateUpdate() {
        if (!npc.follower.moving) {
            timeUntilMove -= Time.deltaTime;
        }
        if (timeUntilMove <= 0 && !npc.locked) {
            MoveToRandomNeighbor();
            timeUntilMove = waitTime;
        }
    }

    private void MoveToRandomNeighbor() {
        if(nodesToAvoid == null)
            SetFollower(npc.follower.ClosestNode().RandomNeighbor());
        else
            SetFollower(npc.follower.ClosestNode().RandomNeighbor(), nodesToAvoid);
    }

    public override void Enter() {

    }

    public override void Exit() {

    }

}