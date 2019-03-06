using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FleeState : NpcState {
    Node exit;
    PathFollower follower;
    PathFinder finder;

    private bool atExit;

    public FleeState(Npc npc, Node node) : base(npc) {
        exit = node;
        Enter();
    }

    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {

    }

    public override void OnInteract(Player p) {

    }

    public override void Enter() {

        npc.SetSpeed(x => x *= 2);

        npc.ResetAnimParams();
        npc.animControl.SetBool("isScared", true);
        npc.SetState(new LeaveState(npc, exit));
        /* 
        SetFollower(exit);
        PathFollower.ReachNode += ReachExit;
        */
    }

    public override void StateUpdate() {
        // if (Vector3.Distance(npc.transform.position, exit.transform.position) < 0.5f)
        /* 
        if(atExit)
        {
          Exit();
        }
        */
    }

    public override void Exit() {
         npc.SetSpeed(x => x /= 2);
    }

    public override bool IsScared(){
        return true;
    }

    public override bool IsRunning(){
        return true;
    }
}