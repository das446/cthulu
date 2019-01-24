using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class NpcState {

    protected Npc npc;

    public int priority;

    public static event Action<Npc, Player> OnClick;

    public abstract void FrameUpdate();

    public abstract void Enter();

    public abstract void Exit();

    public NpcState(Npc npc){
        this.npc = npc;
    }

    public virtual void OnInteract(Player p) {
        OnClick(npc,p);
        Vector3 target = p.transform.position;
        target.y = npc.transform.position.y;
        npc.transform.LookAt(target);
        npc.Lock();
    }

    protected PathFollower SetFollower(Node target) {
        PathFollower follower = npc.follower;
        follower.SetPath(target);
        return follower;
    }
}