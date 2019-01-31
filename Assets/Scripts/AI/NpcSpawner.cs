using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NpcSpawner : MonoBehaviour {

    [SerializeField] Node start;
    [SerializeField] Node lobby;

    public void Spawn(Npc npc) {
        Npc n = Instantiate(npc, start.transform.position + Vector3.up, Quaternion.identity);
        n.exitNode = start;
        n.lobbyNode = lobby;
        n.SetState(new WanderState(npc, 10));


    }
}