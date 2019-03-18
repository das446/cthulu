using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class FurnitureDebris : Interactable, IEvaluated {

    [SerializeField] GameObject sweep;
    [SerializeField] float delay = 3;

    AudioSource _audio;

    public AudioClip breaksound, sweepsound;

    public float Evaluate(Npc npc, Room r) {
        return -20;
    }

    public override void Interact(Player p) {
        Cthulu.Events.GameManager.When("player","sweep");
        StartCoroutine(CleanUp(p));
    }

    void Start() {
        _audio = GetComponent<AudioSource>();
        RaycastHit hit;
        if (Physics.Raycast(transform.position + Vector3.up, Vector3.down, out hit, Mathf.Infinity)) {
            Vector3 v = hit.point;
            transform.position = v;
            Debug.Log(v);
        }
        _audio.PlayOneShot(breaksound);
    }

    //The Clean Up Script
    IEnumerator CleanUp(Player p) {
        p.Lock();
        GameObject s = Instantiate(sweep, transform.position, transform.rotation);
        s.transform.parent = transform;
        s.transform.localPosition = Vector3.zero;
        s.transform.Rotate(0,90,0);
        Debug.Log(transform.position);
        Debug.Log(s.transform.position);
        _audio.PlayOneShot(sweepsound);
        //s.transform.Rotate(0, 90, 0);
        yield return new WaitForSeconds(delay);
        p.Unlock();
        Destroy(s);
        Destroy(gameObject);
    }
}