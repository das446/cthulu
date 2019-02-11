using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;

public class Portal : Monster {

    [SerializeField] Monster monsterBase;
    Monster monster;
    [SerializeField] float delay;

    void Start() {
        OnSpawn();
    }

    IEnumerator SpawnMonster(float delay){
        yield return new WaitForSeconds(delay);
        monster = Instantiate(monsterBase,transform.position,transform.rotation);
    }

    public override void FurnitureContact(Furniture furniture) {
        GetHit((int)furniture.weight);
    }

    public override void OnSpawn()
    {
        StartCoroutine(SpawnMonster(delay));
    }

    public override void Do(DoEvent de)
    {
            if(de.action == "spawn"){
            gameObject.SetActive(true);
            transform.position = Room.GetRoom(de.args[0]).transform.position;
        }
    }
}