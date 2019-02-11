using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadState : NpcState
{
    private DeadNpc ragdoll;
    private ICanHold holder;

    public DeadState(Npc npc, DeadNpc ragdollNpc) : base(npc)
    {
        ragdoll = ragdollNpc;
        Enter();
    }

    public DeadState(Npc npc, DeadNpc ragdollNpc, ICanHold holder) : base(npc)
    {
        ragdoll = ragdollNpc;
        this.holder = holder;
        Enter();
    }

    public override void StateUpdate()
    {
        
    }

    public override void Enter()
    {
        Vector3 buyerPos = npc.gameObject.transform.position;
        Quaternion buyerRot = npc.gameObject.transform.rotation;
        DeadNpc d = GameObject.Instantiate(ragdoll, buyerPos, buyerRot);
        if(holder!=null){
            holder.PickUp(d);
        }
        GameObject.Destroy(npc.gameObject);
        // throw new System.NotImplementedException();
    }

    public override void Exit()
    {
        throw new System.NotImplementedException();
    }
}