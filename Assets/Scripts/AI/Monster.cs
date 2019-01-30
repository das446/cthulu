using System;
using UnityEngine;

public abstract class Monster : MonoBehaviour, IEvaluated {

    protected int hp;

    public abstract void OnSpawn();
    public abstract void GetHit();
    public abstract void Die();

    public abstract void FurnitureContact(Furniture furniture);

    public static event Action<Monster, Vector3> Spawn;

    void Start(){
        Spawn(this,transform.position);
        OnSpawn();
    }

    public float Evaluate(Npc npc, Room r)
    {
        throw new NotImplementedException();
    }



}