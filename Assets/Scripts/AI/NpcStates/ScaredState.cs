using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class ScaredState : NpcState 
{
    // Node exit;
    // PathFollower follower;
    // PathFinder finder;

    // private bool atExit;

    

    // public ScaredState(Npc npc, Node node) : base(npc) 
    // {
    //     exit = node;
    //     Enter();
    // }

    public ScaredState(Npc npc, float time) : base(npc) 
    {
        npc.DoAfterTime(npc.RunToExit,time);
        Debug.Log("EnterScaredState");
        Enter();
    }

    public override void StateUpdate() 
    {
       // if (Vector3.Distance(npc.transform.position, exit.transform.position) < 0.5f)
        /* 
        if(atExit)
        {
          Exit();
        }
        */
    }
    /* 
    void ReachExit(Npc n, Node node) {
        if (n == npc && node == exit) {
            atExit = true;
            PathFollower.ReachNode -= ReachExit;
        }
        
    }
    */

    public override void Enter() 
    {
        npc.SetMessage("!",Color.red);
        // npc.SetState(new LeaveState(npc, exit));
        
        npc.ResetAnimParams();
        npc.PlayScreamSound();
        npc.animControl.SetBool("gotScared", true);
        // npc.animControl.SetBool("isScared", true);
        /* 
        SetFollower(exit);
        PathFollower.ReachNode += ReachExit;
        */
    }

    public override void Exit() 
    {
       //GameObject.Destroy(npc.gameObject);
    }

    public override void OnInteract(Player p)
    {
        
    }

    public override bool IsScared(){
        return true;
    }
}