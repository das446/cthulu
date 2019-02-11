using System;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class Room : MonoBehaviour {
    public List<Furniture> furniture;

    [SerializeField] List<Node> nodes;
    [SerializeField] List<MonsterSpawnPoint> spawnPoints;
    public List<Portal> portals;

    public static Dictionary<string, Room> rooms = new Dictionary<string, Room>();

    void Start() {
        PathFollower.ReachNode += CheckEnter;
        rooms.Add(name.ToLower(), this);
    }

    private void CheckEnter(Npc npc, Node node) {
        if (nodes == null || npc == null) {
            Debug.Log(nodes);
            Debug.Log(npc);
            return;
        }
        if (nodes.Contains(node) & npc.CurRoom != this) {
            npc.EnterRoom(this);
        }
    }

    public Node RandomNode() {
        return nodes.RandomItem();
    }

    public Monster SpawnAtRandom(Monster m) {
        MonsterSpawnPoint s = spawnPoints.RandomItem(x => x.CanSpawn());
        return SpawnMonster(m,s);
    }

    public Monster SpawnMonster(Monster m, MonsterSpawnPoint spawn) {
        return spawn.Spawn(m);
    }

    public static Room GetRoom(string s) {
        Debug.Log(s);
        return rooms[s.ToLower()];
    }
}