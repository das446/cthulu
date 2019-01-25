/// <summary>
/// Author: Victor Liu
/// </summary>

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuyState : NpcState 
{
    Node lobby;
    PathFollower follower;
    PathFinder finder;

    private float waitTimer;

    private float defaultWaitTime = 60;

    public BuyState(Npc npc, Node node) : base(npc) 
    {
        lobby = node;
        Enter();
    }

    public override void FrameUpdate() 
    {
        if (Vector3.Distance(npc.transform.position, lobby.transform.position) < 0.5f)
        {
            waitTimer -= Time.deltaTime;
            if(waitTimer <= 0)
            {
                npc.leaveBuyState();
            }
        }
    }

    public override void Enter() 
    {
        SetFollower(lobby);
        waitTimer = defaultWaitTime;
    }

    public override void Exit() 
    {

    }

    public override void OnInteract(Player p)
    {
        
    }
}