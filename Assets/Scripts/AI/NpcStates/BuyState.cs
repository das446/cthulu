using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;

public class BuyState : NpcState {
    Node lobby;

    //Node exit;

    private float waitTimer;

    private float defaultWaitTime = 15;

    private bool atLobby;

    public static event Action<Npc> ExitState;

    public BuyState(Npc npc, Node node) : base(npc) {
        lobby = node;
        Enter();
    }

    public override void StateUpdate() {

        if (atLobby) {
            waitTimer -= Time.deltaTime;
            if (waitTimer <= 0) {
                npc.LeaveBuyState();
            }
        }
        if (!npc.follower.moving) {
            npc.ResetAnimParams();
        }
        else
        {
            npc.ResetAnimParams();
            npc.animControl.SetBool("isWalking", true);
        }
    }

    public override void Enter() {
        GameManager.When(npc.name,"readytobuy");
        SetFollower(lobby);
        waitTimer = defaultWaitTime;
        PathFollower.ReachNode += ReachLobby;
        npc.SetMessage("$", Color.green);
    }

    void ReachLobby(Npc n, Node node) {
        if (n == npc && node == lobby) {
            atLobby = true;
            PathFollower.ReachNode -= ReachLobby;
        }

    }

    public override void Exit() {
        npc.SetMessage("", Color.green);
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