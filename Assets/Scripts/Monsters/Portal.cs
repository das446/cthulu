using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Portal : MonoBehaviour {

    [SerializeField] Monster monsterBase;
    Monster monster;
    [SerializeField] float delay;

    void Start() {

    }

    IEnumerator SpawnMonster(float delay){
        yield return new WaitForSeconds(delay);
        monster = Instantiate(monsterBase,transform.position,transform.rotation);
    }
}