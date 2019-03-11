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

    public DeadState(Npc npc, DeadNpc ragdollNpc, ICanHold holder) : base(npc) {
        ragdoll = null;
        this.holder = holder;
        this.npc = npc;
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
        GameObject d = GameObject.Instantiate(ragdoll,npc.transform.position, npc.transform.rotation);
        Debug.Log(d.name + "shows up");
        npc.gameObject.SetActive(false);
        Npc.Active.Remove(npc);
        
    }

    public override void Exit() {
        throw new System.NotImplementedException();
    }
}