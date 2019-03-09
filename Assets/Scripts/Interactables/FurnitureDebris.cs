using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class FurnitureDebris : Interactable, IEvaluated {

    [SerializeField] GameObject sweep;
    [SerializeField] float delay = 3;
    public string sweepsound;

    public float Evaluate(Npc npc, Room r) {
        return -20;
    }

    public override void Interact(Player p) {
        Cthulu.Events.GameManager.When("player","sweep");
        StartCoroutine(CleanUp(p));
    }

    void Start() {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity)) {
            Vector3 v = hit.point;
            transform.position = v;
            Debug.Log(v);
        }

    }

    //The Clean Up Script
    IEnumerator CleanUp(Player p) {
        p.Lock();
        GameObject s = Instantiate(sweep, transform.position, transform.rotation);
        s.transform.position = transform.position;
        gameObject.PlaySound(sweepsound);
        //s.transform.Rotate(0, 90, 0);
        yield return new WaitForSeconds(delay);
        p.Unlock();
        Destroy(s);
        Destroy(gameObject);
    }
}