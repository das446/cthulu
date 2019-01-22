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

    }

    public override void Enter() {
        SetFollower(target);
    }

    public override void Exit() {

    }

    public override void OnInteract(Player p) {

    }
}