using System;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public abstract class Monster : MonoBehaviour, IEvaluated, IManageable {

    [SerializeField] protected int hp;
    [SerializeField] protected float scareFactor;

    [SerializeField] protected int damage;

    public GameObject obj => gameObject;

    public static event Action<Monster, Vector3> Spawn;
    public abstract void FurnitureContact(Furniture furniture);

    public abstract void OnSpawn();

    public virtual void GetHit(int damageAmount) {
        this.hp -= damageAmount;
        if (hp <= 0) {
            Die();
        }
    }
    public virtual int HitBuyer(Npc npc) {
        return damage;
    }
    public virtual void Die() {
        GameManager.When(name,"die");
        gameObject.SetActive(false);
    }

    void Awake()
    {
     this.AddToManager();   
     gameObject.SetActive(false);
    }

    void Start() {
        if (Spawn != null) { Spawn(this, transform.position); }
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

    public void SpawnMonster(MonsterSpawnPoint s) {
        s.Spawn(this);
    }

    public abstract void Do(DoEvent de);
}