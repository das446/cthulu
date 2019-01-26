using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Furniture : Interactable {
    public int weight;
    public int health;
    public Vector3 startPos;

    void Start() {
        startPos = transform.position;
    }

    public void GetPickedUp(Player p) {

    }

    /// <summary>
    /// Throwing a light one or dropping a heavy one
    /// </summary>
    /// <param name="p"></param>
    public void Release(Player p) {

    }

    public override void Interact(Player p)
    {
        throw new System.NotImplementedException();
    }
}