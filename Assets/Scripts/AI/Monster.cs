using System;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public abstract class Monster : MonoBehaviour, IEvaluated, IManageable {

    [SerializeField] protected int hp;
    [SerializeField] int startHp;
    [SerializeField] protected float scareFactor;

    [SerializeField] protected int damage;

    public GameObject obj => gameObject;

    public const int layer = 1 << 13;

    public static event Action<Monster, Vector3> Spawn;
    public static event Action<Monster> OnDie;
    public abstract void FurnitureContact(Furniture furniture);

    AudioSource _audio;

    public AudioClip spawn, hurt;

    public virtual void OnSpawn() {
        _audio.PlayOneShot(spawn);
        gameObject.SetActive(true);
        hp = startHp;
        if (Spawn != null) { Spawn(this, transform.position); }
    }

    public virtual void GetHit(int damageAmount) {
        this.hp -= damageAmount;
        if(!_audio.isPlaying)
        {
            _audio.PlayOneShot(hurt);
        }
        if (hp <= 0) {
            Die();
        }
    }
    public virtual int HitBuyer(Npc npc) {
        return damage;
    }
    public virtual void Die() {
        if (OnDie != null) { OnDie(this); }
        GameManager.When(name, "die");
        Debug.Log(name+":die");
        gameObject.SetActive(false);
    }

    protected void Awake() {
        this.AddToManager();
        gameObject.SetActive(false);
        _audio = GetComponent<AudioSource>();
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

    public virtual void SeeBuyer(Npc npc) {

    }
}