using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName="GameEvent/SpawnMonster")]
public class SpawnMonsterEvent : ScriptableObject
{
    public GameObject monster;
    public Transform spawn;

    public void SpawnMonster(){
        
    }

    public void SpawnMonster(GameObject m){

    }

    public void SpawnMonster(Transform t){

    }
}
