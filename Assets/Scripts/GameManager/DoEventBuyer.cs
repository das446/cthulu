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
        Debug.Log(buyerDo.Print());
        string buyerAction = buyerDo.action;
        switch (buyerAction) {
            case "spawn":
                Spawn();
                break;
            case "goto":
                string arg = buyerDo.args[0];
                if (arg.StartsWith("room")) {
                    string room = arg;
                    if (arg.Contains("|")) {
                        room = arg.Split('|').Slice(1, -1).RandomItem();
                    }
                    npc.GoToRoom(room);
                } else if (arg.StartsWith("node")) {
                    string node = arg;
                    if (arg.Contains("|")) {
                        node = arg.Split('|').Slice(1, -1).RandomItem();
                    }
                    npc.GoToNode(node);
                }

                break;
                // case "fakeOut":
                //     string fakeLoc = buyerDo.args[0];
                //     string realLoc = buyerDo.args[1];
                //     FakeOut(fakeLoc, realLoc);
                //     break;
        }
    }

    /// <summary>
    /// "spawns" a new buyer
    /// </summary>
    /// <param name="name">identifier for buyer</param>
    void Spawn() {
        npc.gameObject.SetActive(true);
        npc.interest = 0;
        npc.GoToRoom("room.livingroom");
        //tell npc to enter building
        // npc.GoToRoom(npc.lobbyNode);
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