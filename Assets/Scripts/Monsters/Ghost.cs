using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;

public class Ghost : Monster {

    IPossesable possedObject;
    GameObject g;
    IPossesable target;

    public static List<IPossesable> possesables = new List<IPossesable>();

    [SerializeField] float speed = 1;


    public override void FurnitureContact(Furniture furniture) {
        IPossesable p = furniture.GetComponent<IPossesable>();
        if (p != null && possedObject == null) {
            p.GetPossessed(this);
            Possess(p);
        }
    }

    private void Possess(IPossesable p) {
        possedObject = p;
        transform.eulerAngles = new Vector3(-90, 0, 0);
        transform.parent = p.gameObject.transform;
        transform.localPosition = Vector3.zero;
        
    }

    void Update() {

        if (target == null && possedObject == null) {
            target = ClosestPossessable();
        }
        if (target != null && target.Possessable() && possedObject == null) {
            transform.position = Vector3.MoveTowards(transform.position, target.gameObject.transform.position, Time.deltaTime * speed);
        }
        if (Vector3.Distance(transform.position, target.gameObject.transform.position) < 1 && possedObject == null && target.Possessable()) {
            Possess(target);
            target.GetPossessed(this);
        }
        if (possedObject != null) {
            possedObject?.GhostUpdate();
        }
    }

    private IPossesable ClosestPossessable() {
        IPossesable p = possesables[0];
        float d = Mathf.Infinity;
        foreach (IPossesable ps in possesables) {
            if (ps.Possessable()) {
                float d2 = Vector3.Distance(transform.position, ps.gameObject.transform.position);
                if (d2 < d) {
                    p = ps;
                }
            }
        }
        return p;
    }

    public void UnPossess() {
        possedObject = null;
        Die();
    }

    public override void Do(DoEvent de)
    {
        if(de.action == "spawn"){
            gameObject.SetActive(true);
            transform.position = Room.GetRoom(de.args[0]).transform.position;
        }
    }
}

public interface IPossesable {
    void GetPossessed(Ghost g);
    void UnPossess();
    void GhostUpdate();
    bool Possessed();
    bool Possessable();
    GameObject gameObject { get; }
}