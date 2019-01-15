using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;

public class Npc : MonoBehaviour, IInteractable, IHasOutline {

    public NpcState curState;
    [SerializeField] Outline o;

    public void Interact(Player p) {

    }

    public Outline GetOutline() {
        return o;
    }

    public bool Valid(Player p) {
        return true;
    }

    void Update(){
        curState.Update(this);
    }
}