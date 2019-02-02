using System;
using UnityEngine;

public abstract class Monster : MonoBehaviour, IEvaluated {

    [SerializeField] protected int hp;
    [SerializeField] protected float scareFactor;
    
    [SerializeField] protected int damage;

    public static event Action<Monster, Vector3> Spawn;
    public abstract void FurnitureContact(Furniture furniture);





    public abstract void OnSpawn();
    
    public virtual void GetHit(int damageAmount){
        this.hp -= damageAmount; 
        if(hp<=0){
            Die();
        }  
    }
    public virtual int HitBuyer(Npc npc){
        return damage;
    }
    public virtual void Die(){

        Destroy(this);
    }


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