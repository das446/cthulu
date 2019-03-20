using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;

public class FurnitureDebris : Interactable, IEvaluated {

    [SerializeField] GameObject sweep;
    [SerializeField] float delay = 3;

    AudioSource _audio;

    public AudioClip breaksound, sweepsound;

    [SerializeField] GameObject dustPrefab;
    GameObject dustInstance;

    public static List<GameObject> dustPool = new List<GameObject>();

    public float Evaluate(Npc npc, Room r) {
        return -20;
    }

    public override void Interact(Player p) {
        Cthulu.Events.GameManager.When("player", "sweep");
        StartCoroutine(CleanUp(p));
    }

    void Start() {
        _audio = GetComponent<AudioSource>();
        RaycastHit hit;
        if (Physics.Raycast(transform.position + Vector3.up, Vector3.down, out hit, Mathf.Infinity)) {
            Vector3 v = hit.point;
            transform.position = v;
        }
        _audio.PlayOneShot(breaksound);
        MakeDebris(transform.position);

    }

    //The Clean Up Script
    IEnumerator CleanUp(Player p) {
        p.Lock();
        GameObject s = Instantiate(sweep, transform.position, transform.rotation);
        s.transform.parent = transform;
        s.transform.localPosition = Vector3.zero;
        s.transform.Rotate(0, 90, 0);
        _audio.PlayOneShot(sweepsound);

        //s.transform.Rotate(0, 90, 0);
        MakeDebris(transform.position);
        yield return new WaitForSeconds(delay/2);
        MakeDebris(transform.position);
        yield return new WaitForSeconds(delay/2);
        MakeDebris(transform.position);
        p.Unlock();
        Destroy(s);
        Destroy(gameObject);
        //dustInstance.gameObject.SetActive(false);

    }

    private void MakeDebris(Vector3 point) {
        dustInstance = dustPool.FirstOrDefault(x => !x.gameObject.activeSelf);
        if (dustInstance == null) {
            dustInstance = Instantiate(dustPrefab);
            dustPool.Add(dustPrefab);
        }
        dustInstance.SetActive(true);
        dustInstance.transform.position = point;
    }
}