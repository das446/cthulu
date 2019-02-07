using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetEventBuyer : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    /// <summary>
    /// instantiate a new buyer
    /// </summary>
    /// <param name="name">identifier for buyer</param>
    /// <param name="type">type of buyer</param>
    /// <param name="location">starting location</param>
    /// <param name="interest">starting interest level</param>
    public void spawn(string name, string type, Node location, int interest)
    {

    }

    /// <summary>
    /// tells buyer to go to a room
    /// </summary>
    /// <param name="name">name of buyer to move</param>
    /// <param name="room">room buyer should go to</param>
    public void goToRoom(string name, Room room)
    {

    }

    /// <summary>
    /// sends buyer to appear to head to certain area, then double back to another one
    /// </summary>
    /// <param name="name">name of buyer to move</param>
    /// <param name="fakeNode">location buyer appears to go to</param>
    /// <param name="realNode">location buyer actually goes to</param>
    public void fakeOut(string name, Node fakeNode, Node realNode)
    {

    }
}
