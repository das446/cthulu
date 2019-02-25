using System;
using System.Collections.Generic;
using UnityEngine;

public class LineOfSightChecker {

    private Npc npc;
    private float vision;
    static int layer = ~(1 << 10);
    Room room;

    public LineOfSightChecker(Npc npc, float vision, Room r) {
        this.npc = npc;
        this.vision = vision;
        room = r;
    }

    public LineOfSightChecker(Npc npc, float vision) {
        this.npc = npc;
        this.vision = vision;
    }

public List<GameObject> CheckMonsters(List<Collider> cols) {
        RaycastHit hit;
        Transform t = npc.transform;
        List<GameObject> monsters = new List<GameObject>();// this doesn't use the monster class because of things like possesed furniture
        
    
       // Debug.Log(cols.Count);
        Collider[] _cols = Physics.OverlapSphere(t.position, vision/2, Monster.layer); // give NPC small radial awarness as well.
        for (int k = 0; k < _cols.Length;k++)
        {
            cols.Add(_cols[k]);
        }

        for (int i = 0; i < cols.Count; i++) {
            Vector3 dir = cols[i].gameObject.transform.position - t.position;
            //if (Physics.SphereCast(t.position, 1, dir, out hit, vision)) {
            if (Physics.Raycast(t.position, dir,out hit ,vision)) {
                Debug.DrawRay(t.position, dir * hit.distance, Color.yellow, Time.deltaTime, true);
              //  Debug.Log(hit.collider.gameObject.layer + ", " + Monster.layer);
                    if (hit.collider.gameObject.layer == 13) // for some reason Monster.layer is returning 8192 for me.
                    {
                Debug.DrawRay(t.position, dir * hit.distance, Color.red, Time.deltaTime, true);
                GameObject m = hit.collider.gameObject;
                    if (m != null) 
                        {
                    Debug.Log("Monster");
                    monsters.Add(m);
                        }
                    }
            }
        }
        return monsters;
    }
    




    /*
    private Npc npc;
    private float vision;
    static int layer = ~(1 << 10);
    Room room;

    public LineOfSightChecker(Npc npc, float vision, Room r) {
        this.npc = npc;
        this.vision = vision;
        room = r;
    }

    public LineOfSightChecker(Npc npc, float vision) {
        this.npc = npc;
        this.vision = vision;
    }

    public List<GameObject> CheckMonsters() {
        RaycastHit hit;
        Transform t = npc.transform;
        List<GameObject> monsters = new List<GameObject>();// this doesn't use the monster class because of things like possesed furniture
        Collider[] cols = Physics.OverlapSphere(t.position, vision, Monster.layer);
        for (int i = 0; i < cols.Length; i++) {
            Vector3 dir = cols[i].gameObject.transform.position - t.position;
            if (Physics.SphereCast(t.position, 1, dir, out hit, vision)) {
                Debug.DrawRay(t.position, dir * hit.distance, Color.yellow, Time.deltaTime, true);
                GameObject m = hit.collider.gameObject;
                if (m != null) {
                    Debug.Log("Monster");
                    monsters.Add(m);
                }
            }
        }
        return monsters;
        //*/ 

}