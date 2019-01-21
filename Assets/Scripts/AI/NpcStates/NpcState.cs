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

    public virtual void OnInteract(Player p) {
        OnClick(npc);
    }

    protected PathFollower SetFollower(Node target) {
        PathFollower follower = npc.GetComponent<PathFollower>();
        Node start = follower.ClosestNode();
        follower.SetPath(start, target);
        return follower;
    }
}