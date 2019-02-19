using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FleeState : NpcState
{
    Node exit;
    PathFollower follower;
    PathFinder finder;

    private bool atExit;

    public FleeState(Npc npc, Node node) : base(npc) 
    {
        exit = node;
        Enter();
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public override void Enter() 
    {
        npc.SetState(new LeaveState(npc, exit));
        
        npc.resetAnimParams();
        npc.animControl.SetBool("isScared", true);
        /* 
        SetFollower(exit);
        PathFollower.ReachNode += ReachExit;
        */
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

    public override void Exit() 
    {
       //GameObject.Destroy(npc.gameObject);
    }
}
