using System;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class Room : MonoBehaviour, IManageable {
    public List<Furniture> furniture;

    [SerializeField] List<Node> nodes;
    [SerializeField] List<MonsterSpawnPoint> spawnPoints;
    public List<Portal> portals;

    public static Dictionary<string, Room> rooms = new Dictionary<string, Room>();

    public GameObject obj => throw new NotImplementedException();

    void Start() {
        PathFollower.ReachNode += CheckEnter;
        rooms.Add(name.ToLower(), this);
        this.AddToManager();
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

    public void SpawnAtRandom(Monster m) {
        MonsterSpawnPoint s = spawnPoints.RandomItem(x => x.CanSpawn());
    }

    public void SpanwMonster(Monster m, MonsterSpawnPoint spawn) {
        spawn.Spawn(m);
    }

    public static Room GetRoom(string s) {
        Debug.Log(s);
        return rooms[s.ToLower()];
    }

    public void Do(DoEvent de)
    {
        
    }
}