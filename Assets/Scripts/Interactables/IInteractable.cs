using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;

public abstract class Interactable : MonoBehaviour, IHasOutline {
   public abstract void Interact(Player p);

   [SerializeField] Outline o;

    public Outline GetOutline()
    {
        return o;
    }

    public bool Valid(Player p)
    {
        return true;
    } 

}