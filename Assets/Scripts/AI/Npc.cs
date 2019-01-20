using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;

public class Npc : Interactable {

    [SerializeField] NpcState curState;

    [Header("States")]
    NpcState Wander;


    public override void Interact(Player p) {

    }    

    void Update() {
        curState?.FrameUpdate(this);
    }
}