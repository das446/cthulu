using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FurnitureDebris : Interactable, IEvaluated {
    public float Evaluate(Npc npc, Room r) {
        return -20;
    }

    public override void Interact(Player p) {
        CleanUp();
    }

    private void CleanUp() {
        //Play Sweep animation

        Destroy(gameObject);
    }
}