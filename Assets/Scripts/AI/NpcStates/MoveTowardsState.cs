using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;

public class MoveTowardsState : NpcState {
    Node target;
    PathFollower follower;
    PathFinder finder;

    public MoveTowardsState(Npc npc, Node node) : base(npc) {
        target = node;
        Enter();
    }

    public override void StateUpdate() {
        // if (Vector3.Distance(npc.transform.position, target.transform.position) < 0.5f) {
        //     npc.StartWandering();
        // }
    }

    public override void Enter() {
        SetFollower(target);
        PathFollower.ReachNode += ReachTarget;
        
        npc.ResetAnimParams();
        npc.animControl.SetBool("isWalking", true);
    }

    private void ReachTarget(Npc npc, Node n) {
        if (this.npc == npc && n == target){
            GameManager.When(npc.name,"reach.target");
            PathFollower.ReachNode -= ReachTarget;
        }
    }

    public override void Exit() {

    }
}