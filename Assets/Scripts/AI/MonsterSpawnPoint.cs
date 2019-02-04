using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterSpawnPoint : MonoBehaviour {

    [SerializeField] Monster curMonster;
    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {

    }

    public bool CanSpawn() {
        return curMonster == null;
    }

    public void Spawn(Monster m) {
        Instantiate(m, transform.position, transform.rotation);
    }
}