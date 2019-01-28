using UnityEngine;

public abstract class Monster : MonoBehaviour {

    int hp;

    public abstract void OnSpawn();
    public abstract void GetHit();
    public abstract void Die();
}