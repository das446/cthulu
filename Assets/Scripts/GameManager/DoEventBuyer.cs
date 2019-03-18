using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class DoEventBuyer {
    Npc npc;

    public DoEventBuyer(Npc npc) {
        this.npc = npc;
    }

    public void Do(DoEvent buyerDo) {
        string buyerAction = buyerDo.action;
        switch (buyerAction) {
            case "spawn":
                Spawn();
                break;
            case "goto":
                string arg = buyerDo.GetArg(0);

                if (arg.StartsWith("room")) {
                    npc.GoToRoom(arg);
                } else if (arg.StartsWith("node")) {
                    npc.GoToNode(arg);
                }

                break;
            case "wander":
                npc.StartWandering();
                break;
            case "setInterest":
                npc.interest = Convert.ToInt32(buyerDo.args[0]);
                break;
            case "play":
                SubtitleController.singleton.Play(buyerDo.args[0], npc.DisplayName());
                break;
        }
    }

    /// <summary>
    /// "spawns" a new buyer
    /// </summary>
    /// <param name="name">identifier for buyer</param>
    void Spawn() {
        if (npc.gameObject.activeSelf) { return; }
        npc.gameObject.SetActive(true);
        npc.interest = 0;
        npc.Spawn();
    }

    /// <summary>
    /// tells buyer to go to a room
    /// </summary>
    /// <param name="room">room buyer should go to</param>
    void GoToRoom(string room) {

        npc.GoToRoom(room);
    }

    // /// <summary>
    // /// sends buyer to appear to head to certain area, then double back to another one
    // /// </summary>
    // /// <param name="name">name of buyer to move</param>
    // /// <param name="fakeNode">location buyer appears to go to</param>
    // /// <param name="realNode">location buyer actually goes to</param>
    // public void FakeOut(string fakeNode, string realNode)
    // {
    //     // npc.FakeOut(fakeNode, realNode);
    // }
}