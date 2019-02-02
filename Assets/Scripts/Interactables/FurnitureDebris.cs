using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FurnitureDebris : Interactable, IEvaluated {

    [SerializeField] GameObject sweep;
    [SerializeField] float delay = 3;

    public float Evaluate(Npc npc, Room r) {
        return -20;
    }

    public override void Interact(Player p) {
        StartCoroutine(CleanUp(p));
    }

    IEnumerator CleanUp(Player p) {
        p.Lock();
        GameObject s = Instantiate(sweep, transform.position, p.transform.rotation);
        s.transform.Rotate(0,90,0);
        yield return new WaitForSeconds(delay);
        p.Unlock();
        Destroy(s);
        Destroy(gameObject);
    }
}