using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;

public abstract class Interactable : MonoBehaviour, IHasOutline {
   public abstract void Interact(Player p);

   public virtual void Interact(Player p, Vector3 pos){
       Interact(p);
   }

   [SerializeField] Outline o;

    public Outline GetOutline()
    {
        return o;
    }

    public virtual bool Valid(Player p)
    {
        return true;
    } 

}