using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cthulu;

public class FurnitureDebris : Interactable, IEvaluated {

    [SerializeField] GameObject sweep;
    [SerializeField] float delay = 3;
    public string sweepsound;

    public float Evaluate(Npc npc, Room r) {
        return -20;
    }

    public override void Interact(Player p) {
        StartCoroutine(CleanUp(p));
    }

    //The Clean Up Script
    IEnumerator CleanUp(Player p) {
        p.Lock();
        GameObject s = Instantiate(sweep, transform.position, p.transform.rotation);
        gameObject.PlaySound(sweepsound);
        s.transform.Rotate(0,90,0);
        yield return new WaitForSeconds(delay);
        p.Unlock();
        Destroy(s);
        Destroy(gameObject);
    }
}