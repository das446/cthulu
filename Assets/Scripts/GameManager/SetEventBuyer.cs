using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetEventBuyer : IManageable
{
    // Start is called before the first frame update
    void Start()
    {
        this.AddToManager();
    }

    void Do(DoEvent buyerDo)
    {
        string buyerAction = buyerDo.action;
        switch(buyerAction)
        {
            case "spawn":
                string name = buyerDo.args[0];
                int startInterest = int.TryParse(buyerDo.args[1]);
                spawn(name, startInterest);
                break;
            case "goTo":
                string name = buyerDo.args[0];
                string room = buyerDo.args[1];
                goToRoom(name, room);
                break;
            case "fakeOut":
                string name = buyerDo.args[0];
                string fakeLoc = buyerDo.args[1];
                string realLoc = buyerDo.args[2];
                fakeOut(name, fakeLoc, realLoc);
                break;
        }
    }

    /// <summary>
    /// "spawns" a new buyer
    /// </summary>
    /// <param name="name">identifier for buyer</param>
    /// <param name="type">type of buyer</param>
    /// <param name="location">starting location</param>
    /// <param name="interest">starting interest level</param>
    public void Spawn(string name, int startInterest)
    {
        //pseudocode
        // GameObject buyer = findBuyer(name);
        // buyer.GetComponent<Npc>().interest = startInterest;
        // buyer.SetActive(true);
        // buyer.GoToRoom(lobby);
    }

    /// <summary>
    /// tells buyer to go to a room
    /// </summary>
    /// <param name="name">name of buyer to move</param>
    /// <param name="room">room buyer should go to</param>
    public void GoToRoom(string name, string room)
    {
        //pseudocode
        // GameObject buyer = findBuyer(name);
        // buyer.GetComponent<Npc>().GoToRoom(room);
    }

    /// <summary>
    /// sends buyer to appear to head to certain area, then double back to another one
    /// </summary>
    /// <param name="name">name of buyer to move</param>
    /// <param name="fakeNode">location buyer appears to go to</param>
    /// <param name="realNode">location buyer actually goes to</param>
    public void FakeOut(string name, string fakeNode, string realNode)
    {
        //pseudocode
        // GameObject buyer = findBuyer(name);
        // buyer.GetComponent<Npc>().fakeOut(fakeNode, realNode);
    }
}
