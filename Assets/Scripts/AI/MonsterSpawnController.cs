using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterSpawnController : MonoBehaviour {

    [SerializeField] List<Room> rooms;
    [SerializeField] List<Monster> monsters;
    [SerializeField] int difficulty;
    [SerializeField] float spawnRate;

    float nextSpawn;

    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {
        nextSpawn -= Time.deltaTime;
        if (nextSpawn <= 0) {
            //SpawnMonster(,);
        }
    }
}