using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterSpawnPoint : MonoBehaviour {

    [SerializeField] Monster curMonster;

    // Start is called before the first frame update

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