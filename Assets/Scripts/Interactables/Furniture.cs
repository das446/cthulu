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

    protected float hpRef;
    //

    public float health = 10;
    float maxHealth;
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
        maxHealth = health;

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

        if (Player.singleton.CurHeld() == this )
        {
            Player.singleton.Release(Player.singleton.CurHeld());
        }
        //Particle Effect
        if (debris != null) {
            Instantiate(debris, transform.position, Quaternion.identity);
        }
        //Destroy(gameObject);
       
        TurnOff();
        countdown = resTimer;
    }

    public virtual float Evaluate(Npc npc, Room r) {
        return health / maxHealth > 0.5f ? 1 : -1;
    }

    public void TakeDamage(float dmg) {
        health -= dmg;
        if (health <= 0) {
            Break();
        }
    }

    public virtual void Do(DoEvent ge) {

    }

    void Update() {

        
        if (countdown > 0) {
            countdown -= Time.deltaTime;
            if (countdown < 0) {
                countdown = 0;
                Respawn();
            }

        }
    }

    public void Respawn() {  
        
        // Series of transform manips to place object at inital pos and prevent it from falling over
        transform.position = startPos;  // Send to location
        transform.rotation = new Quaternion(0f,0f,0f,0f); // place it right-side up
        rb.velocity = Vector3.zero; // force it into the surface 
        rb.freezeRotation = true; // Turning rotation on and off consistantly helps the lamp to not fall after res
        health = hpRef;
       
        TurnOn();
        rb.freezeRotation = false; // Turning rotation on and off consistantly helps the lamp to not fall after res
    }

    public void TurnOff() { // Turning off the object turns off the scripts ablilty to count down (uses update)
       
       gameObject.GetComponent<Collider>().enabled = false;
       gameObject.GetComponentInChildren<Renderer>().enabled = false;

       // gameObject.GetComponent<Furniture>().enabled = true;
    }

    public virtual void TurnOn() {

         
        gameObject.GetComponent<Collider>().enabled = true;
        gameObject.GetComponentInChildren<Renderer>().enabled = true;
        //Debug.Log(curState);
        //Debug.Log(heldLayer);

       
    }

}