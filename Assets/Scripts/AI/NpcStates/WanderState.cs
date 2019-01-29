using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "States/Wander")]
public class WanderState : NpcState {

    float timeUntilMove;
    float waitTime;
    float defaultTime = 5;

    List<Node> nodesToAvoid;

    public WanderState(Npc npc, float waitTime) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = waitTime;
        Enter();
    }

    public WanderState(Npc npc, float waitTime, List<Node> avoids) : base(npc) {
        this.npc = npc;
        this.waitTime = waitTime;
        timeUntilMove = waitTime;
        nodesToAvoid = avoids;
        Enter();
    }

    public WanderState(Npc npc) : base(npc) {
        Debug.Log("Constructor");
        this.waitTime = 5;
        timeUntilMove = waitTime;
    }

    public override void FrameUpdate() {
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