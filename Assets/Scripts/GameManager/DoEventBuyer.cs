using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cthulu.Events;

public class DoEventBuyer
{
    Npc npc;

    public DoEventBuyer(Npc npc)
    {
        this.npc = npc;
    }

    public void Do(DoEvent buyerDo)
    {
        Debug.Log(buyerDo.Print());
        string buyerAction = buyerDo.action;
        switch (buyerAction)
        {
            case "spawn":
                Spawn();
                break;
            case "goto":
                string room = buyerDo.args[0];
                GoToRoom(room);
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
    void Spawn()
    {
        npc.gameObject.SetActive(true);
        npc.interest = 0;
        npc.GoToRoom("LivingRoom");
        //tell npc to enter building
        // npc.GoToRoom(npc.lobbyNode);
    }

    /// <summary>
    /// tells buyer to go to a room
    /// </summary>
    /// <param name="room">room buyer should go to</param>
    void GoToRoom(string room)
    {
        
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
