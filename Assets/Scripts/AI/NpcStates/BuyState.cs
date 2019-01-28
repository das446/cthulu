using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuyState : NpcState {
    Node lobby;

    //Node exit;

    private float waitTimer;

    private float defaultWaitTime = 10;

    private bool atLobby;

    public BuyState(Npc npc, Node node) : base(npc) {
        lobby = node;
        Enter();
    }

    public override void FrameUpdate() {

        if (atLobby) {
            waitTimer -= Time.deltaTime;
            Debug.Log(waitTimer);
            if (waitTimer <= 0) {
                atLobby = false;
                npc.LeaveBuyState();
            }
        }
    }

    public override void Enter() {
        SetFollower(lobby);
        waitTimer = defaultWaitTime;
        PathFollower.ReachNode += ReachLobby;
        Debug.Log("Registered");
    }

    void ReachLobby(Npc n, Node node) {
        if (n == npc && node == lobby) {
            atLobby = true;
            Debug.Log("ReachLobby");
            PathFollower.ReachNode -= ReachLobby;
        }
        
    }

    public override void Exit() {

    }

    //when click on buyer:
    //score increases, buyer leaves for exit,
    //should not be able to be interacted with after, 
    //should not switch states after?

    // public override void OnInteract(Player p)
    // {
    //     OnClick(npc, p);
    //     //score increases
    //     SetFollower(exit);
    // }
}