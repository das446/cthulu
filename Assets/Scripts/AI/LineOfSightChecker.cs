using System.Collections.Generic;
using UnityEngine;

public class LineOfSightChecker {
    private Npc npc;
    private float vision;
    static int layer = ~(1<<8);

    static List<Vector3> dirs = new List<Vector3>() { //don't want to allocate and GC every time
        new Vector3(-1, 0, 0),
        new Vector3(-1, 0, 1),
        new Vector3(0, 0, 1),
        new Vector3(1, 0, 1),
        new Vector3(1, 0, 0),
        new Vector3(1, 0, -1),
        new Vector3(-1, 0, -1),
        new Vector3(0, 0, -1),

    };

    public LineOfSightChecker(Npc npc, float vision) {
        this.npc = npc;
        this.vision = vision;
    }

    public List<Monster> CheckMonsters() {
        RaycastHit hit;
        Transform t = npc.transform;
        List<Monster> monsters = new List<Monster>();
        for (int i = 0; i < dirs.Count; i++) {
            Vector3 dir = dirs[i];
            if (Physics.SphereCast(t.position, 1, dir, out hit, vision)) {
                Debug.DrawRay(t.position, dir * hit.distance, Color.yellow, 10,true);
                Monster m = hit.collider.GetComponent<Monster>();
                if(m!=null){
                    monsters.Add(m);
                }
            }
        }
        return monsters;
    }
}