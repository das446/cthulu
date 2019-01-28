using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveTowardsState : NpcState {
    Node target;
    PathFollower follower;
    PathFinder finder;

    public MoveTowardsState(Npc npc, Node node) : base(npc) {
        target = node;
        Enter();
    }

    public override void FrameUpdate() {
        if (Vector3.Distance(npc.transform.position, target.transform.position) < 0.5f) {
            npc.SetState(new WanderState(npc));
        }
    }

    public override void Enter() {
        SetFollower(target);
        PathFollower.ReachNode += ReachTarget;
    }

    private void ReachTarget(Npc npc, Node n) {
        if (this.npc == npc && n == target){
            npc.SetState(new WanderState(npc));
            PathFollower.ReachNode -= ReachTarget;
        }
    }

    public override void Exit() {

    }
}