using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;

public class Portal : Monster {

    public Tentacle monsterBase;
    Tentacle monster;
    [SerializeField] float delay;


    IEnumerator SpawnTentacle(float delay){
        yield return new WaitForSeconds(delay);
        monster = Instantiate(monsterBase,transform.position,transform.rotation);
        monster.name = monsterBase.name;
        monster.gameObject.SetActive(true);
        monster.OnSpawn();
    }

    public override void FurnitureContact(Furniture furniture) {
        GetHit((int)furniture.weight);
    }

    public override void OnSpawn()
    {
        base.OnSpawn();
        StartCoroutine(SpawnTentacle(delay));
    }

    public override void Do(DoEvent de)
    {
        throw new System.NotImplementedException();
    }
}