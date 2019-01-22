using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class NpcState {

    protected Npc npc;

    public static event Action<Npc> OnClick;

    public abstract void FrameUpdate();

    public abstract void Enter();

    public abstract void Exit();

    public NpcState(Npc npc){
        this.npc = npc;
    }

    public virtual void OnInteract(Player p) {
        OnClick(npc);
    }

    protected PathFollower SetFollower(Node target) {
        PathFollower follower = npc.follower;
        Node start = follower.ClosestNode();
        Debug.Log("Find path from " + start + " to " + target);
        follower.SetPath(start, target);
        return follower;
    }
}