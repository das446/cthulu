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

    private bool atLobby;

    public BuyState(Npc npc, Node node) : base(npc) 
    {
        lobby = node;
        Enter();
    }

    public override void FrameUpdate() 
    {
        if (Vector3.Distance(npc.transform.position, lobby.transform.position) < 0.5f)
        {
            //other npc's would push this one away from the node, so quick fix to 
            //make sure the timer kept going once it started and will trigger "pissed"  
            //state even if pushed to other side of map
            atLobby = true;
        }
        if(atLobby)
        {
            waitTimer -= Time.deltaTime;
            if(waitTimer <= 0)
            {
                atLobby = false;
                npc.LeaveBuyState();
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

    // public override void OnInteract(Player p)
    // {
    //     base.OnInteract(p);
    // }
}