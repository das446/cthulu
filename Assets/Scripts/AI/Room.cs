using System;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Room : MonoBehaviour {
    public List<Furniture> furniture;

    [SerializeField] List<Node> nodes;
    public List<MonsterSpawnPoint> spawnPoints;
    public List<Portal> portals;

    public static Dictionary<string, Room> rooms = new Dictionary<string, Room>();

    public static bool writeFile = true;

    void Awake() {
        PathFollower.ReachNode += CheckEnter;
        string n = name.ToLower();
        if (rooms.ContainsKey(n)) {
            Debug.LogWarning("Room with name " + n + " already exists");
        } else {
            rooms.Add(n, this);
        }
    }

    void Start() {
        // if (writeFile) {
        //     string path = Application.streamingAssetsPath + "/Events/" + SceneManager.GetActiveScene().name + "/rooms.txt";
        //     List<string> names = rooms.Keys.ToList();
        //     names.Sort();
        //     System.IO.File.WriteAllLines(path, names);
        //     writeFile = false;
        // }
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
        return SpawnMonster(m, s);
    }

    public Monster SpawnMonster(Monster m, MonsterSpawnPoint spawn) {
        return spawn.Spawn(m);
    }

    public static Room GetRoom(string s) {
        if (!s.StartsWith("room.")) {
            s = "room." + s;
        }
        try {
            return rooms[s.ToLower()];
        } catch {
            throw new NullReferenceException("No room named " + s);
        }
    }
}