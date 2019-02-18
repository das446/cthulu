using System;
using System.Collections.Generic;
using UnityEngine;

public class LineOfSightChecker {
    private Npc npc;
    private float vision;
    static int layer = ~(1 << 10);
    Room room;

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

    public LineOfSightChecker(Npc npc, float vision, Room r) {
        this.npc = npc;
        this.vision = vision;
        room = r;
    }

    public LineOfSightChecker(Npc npc, float vision)
    {
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
                Debug.DrawRay(t.position, dir * hit.distance, Color.yellow, Time.deltaTime, true);
                Monster m = hit.collider.GetComponent<Monster>();
                if (m != null) {
                    Debug.Log("Monster");
                    monsters.Add(m);
                }
            }
        }
        return monsters;
    }

    public bool CheckPortals() {
        return false;
        foreach (Portal portal in room.portals) {
            RaycastHit r;
            Vector3 dir = Vector3.zero; //todo
            if(Physics.Raycast(npc.transform.position, dir, out r, npc.vision, layer)){
                return true;
            }
        }
        return false;
    }
}