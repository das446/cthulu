using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterSpawnPoint : MonoBehaviour {

    [SerializeField] Monster curMonster;

    public static Dictionary<string, MonsterSpawnPoint> spawns = new Dictionary<string, MonsterSpawnPoint>();

    void Awake() {
        if (!spawns.ContainsKey(name)) {
            spawns.Add(name, this);
        }
    }

    public bool CanSpawn() {
        return curMonster == null;
    }

    public Monster Spawn(Monster m) {
        Monster monster = Instantiate(m, transform.position, transform.rotation);
        curMonster = monster;
        monster.OnSpawn();
        return monster;
    }
}