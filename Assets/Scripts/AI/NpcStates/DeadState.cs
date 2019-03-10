using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadState : NpcState {
    private GameObject ragdoll;
    private ICanHold holder;
    private GameObject gb;
    public DeadState(Npc npc, GameObject ragdollNpc) : base(npc) {
        ragdoll = ragdollNpc;
        Enter();
    }

   

    public override void StateUpdate() {

    }

    public override void Enter() {

        // Vector3 buyerPos = npc.gameObject.transform.position;
        // Quaternion buyerRot = npc.gameObject.transform.rotation;
        // 
        // if(holder!=null){
        //     holder.PickUp(d);
        // }
       
        
    }

    public override void Exit() {
        throw new System.NotImplementedException();
    }
}