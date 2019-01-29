using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScaredState : NpcState 
{
    Node exit;
    PathFollower follower;
    PathFinder finder;

    

    public ScaredState(Npc npc, Node node) : base(npc) 
    {
        exit = node;
        Enter();
    }

    public override void FrameUpdate() 
    {
        if (Vector3.Distance(npc.transform.position, exit.transform.position) < 0.5f)
        {
            //score loss, Destroy(npc)?, game over?, Exit()?,
            //other actions related to buyer leaving building
        }
    }

    public override void Enter() 
    {
        SetFollower(exit);
    }

    public override void Exit() 
    {

    }

    public override void OnInteract(Player p)
    {
        
    }
}