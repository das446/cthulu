using System;
using UnityEngine;

public abstract class Monster : MonoBehaviour, IEvaluated {

    [SerializeField] protected int hp;
    [SerializeField] protected float scareFactor;

    public abstract void OnSpawn();
    public abstract void GetHit();
    public abstract void Die();

    public abstract void FurnitureContact(Furniture furniture);

    public static event Action<Monster, Vector3> Spawn;

    void Start() {
        Spawn(this, transform.position);
        OnSpawn();
    }

    public float Evaluate(Npc npc, Room r) {
        RaycastHit hit;
        Vector3 dir = transform.position - npc.transform.position;
        if (Physics.Raycast(npc.transform.position, dir, out hit, npc.vision)) {
            if (hit.collider.GetComponent<Npc>()) {
                return -scareFactor;
            }
        }
        return 0;

    }

}