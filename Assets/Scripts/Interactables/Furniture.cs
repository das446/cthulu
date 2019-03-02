using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class Furniture : Interactable, IEvaluated, IManageable {

    /// <summary>
    /// Player's speed gets divided by weight while holding it, so set it accordingly
    /// </summary>
    [SerializeField] protected float Weight = 1;
    public float weight => Weight;
    //
    public float resTimer;
    public float countdown = 0;

    float hpRef;
    //

    public float health = 10;
    [HideInInspector] public Vector3 startPos;

    public Rigidbody rb;
    public Collider col;

    protected FurnitureState curState;

    Transform phand;
    Vector3 holdpos;
    Quaternion holdrot;

    Transform pPos;

    protected ICanHold holder;

    protected int heldLayer = 11;

    [SerializeField] FurnitureDebris debris;

    public GameObject obj => gameObject;
    MeshRenderer meshRenderer;

    protected void Start() {
        meshRenderer = gameObject.GetComponent<MeshRenderer>();
        if (health <= 0) { health = 1; }
        startPos = transform.position;
        curState = new GroundedState(this);
        //this.SetName();
        //
        countdown = 0;
        hpRef = health;
        if (resTimer == 0) {
            resTimer = 60; // Default res time.
        }

        //
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

    public void Break() {

        if (Player.singleton.CurHeld() == this)
            Player.singleton.Release(Player.singleton.CurHeld());
        //Particle Effect
        if (debris != null) {
            Instantiate(debris, transform.position, Quaternion.identity);
        }
        //Destroy(gameObject);
        TurnOff();
    }

    public virtual float Evaluate(Npc npc, Room r) {
        return health;
    }

    public void TakeDamage(float dmg) {
        health -= dmg;
        if (health <= 0) {
            Break();
        }
    }

    public virtual void Do(DoEvent ge) {

    }

    /////

    void Update() {

        if (countdown > 0) {
            countdown -= Time.deltaTime;
            if (countdown < 0) {
                Respawn();
            }

        }
    }

    public void Respawn() {
        transform.position = startPos;
        TurnOn();
    }

    public void TurnOff() {
        gameObject.SetActive(false);
    }

    public void TurnOn() {
       gameObject.SetActive(true);
    }

}