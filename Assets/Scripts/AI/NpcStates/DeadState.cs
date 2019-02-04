using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadState : NpcState
{
    private GameObject ragdoll;

    public DeadState(Npc npc, GameObject ragdollNpc) : base(npc)
    {
        ragdoll = ragdollNpc;
        Enter();
    }

    public override void FrameUpdate()
    {
        
    }

    public override void Enter()
    {
        Vector3 buyerPos = npc.gameObject.transform.position;
        Quaternion buyerRot = npc.gameObject.transform.rotation;
        GameObject.Instantiate(ragdoll, buyerPos, buyerRot);
        GameObject.Destroy(npc.gameObject);
        // throw new System.NotImplementedException();
    }

    public override void Exit()
    {
        throw new System.NotImplementedException();
    }
}