using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class Furniture : Interactable, IEvaluated, IManageable {

    /// <summary>
    /// Player's speed gets divided by weight while holding it, so set it accordingly
    /// </summary>
    public float weight;
    public float health;
    [HideInInspector] public Vector3 startPos;

    public Rigidbody rb;
    public Collider col;

    protected FurnitureState curState;

    Transform phand;
    Vector3 holdpos;
    Quaternion holdrot;

    Transform pPos;

    protected ICanHold holder;

    [SerializeField] FurnitureDebris debris;

    public GameObject obj => throw new System.NotImplementedException();

    void Start() {
        startPos = transform.position;
        curState = new GroundedState(this);
        //this.SetName();
    }

    /// <summary>
    /// Throwing, dropping, or swinging
    /// </summary>
    public virtual void Use(ICanHold h) {

    }


    public virtual void Release(ICanHold h) {
        rb.useGravity = true;
        SetState(new InAirState(this, h));
    }

    /// <summary>
    /// override this in derived classes
    /// </summary>
    /// <param name="p"></param>
    public override void Interact(Player p) {
        
    }

    // */
    protected void DropObject(ICanHold h) {
        curState = new InAirState(this, h);
        rb.useGravity = true;
    }

    void GrabObject(ICanHold h) {
        curState = new HeldState(this, h);
        rb.useGravity = false;
    }

    public void SetState(FurnitureState s) {
        curState = s;
    }

    public void Break(){
        //Particle Effect
        Instantiate(debris,transform.position,Quaternion.identity);
        Destroy(gameObject);
    }

    public float Evaluate(Npc npc, Room r)
    {
        return health;
    }

    public void TakeDamage(float dmg){
        health-=dmg;
        if(health<=0){
            Break();
        }
    }

    public void Set(GameEvent ge)
    {
        throw new System.NotImplementedException();
    }

    public void TriggerWhen(string function)
    {
        throw new System.NotImplementedException();
    }
}