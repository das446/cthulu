using System;
using UnityEngine;

public abstract class Monster : MonoBehaviour {

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

}