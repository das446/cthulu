using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cthulu.Events;

public class DoEventBuyer : IManageable
{
    Npc npc;

    public DoEventBuyer(Npc npc)
    {
        this.npc = npc;
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    public GameObject obj
    {
        get{ return npc.gameObject; }
    }

    public void Do(DoEvent buyerDo)
    {
        string buyerAction = buyerDo.action;
        switch (buyerAction)
        {
            case "spawn":
                int startInterest;
                int.TryParse(buyerDo.args[0], out startInterest);
                Spawn(startInterest);
                break;
            case "goTo":
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
    /// <param name="type">type of buyer</param>
    /// <param name="location">starting location</param>
    /// <param name="interest">starting interest level</param>
    public void Spawn(int startInterest)
    {
        npc.gameObject.SetActive(true);
        npc.interest = startInterest;
        //tell npc to enter building
        // npc.GoToRoom(npc.lobbyNode);
    }

    /// <summary>
    /// tells buyer to go to a room
    /// </summary>
    /// <param name="name">name of buyer to move</param>
    /// <param name="room">room buyer should go to</param>
    public void GoToRoom(string room)
    {
        // turn string room into Room.cs room
        // npc.GoToRoom(room);
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
