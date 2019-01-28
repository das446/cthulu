using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Furniture : Interactable {
    public int weight;
    public int health;
    [HideInInspector] public Vector3 startPos;

    public Rigidbody rb;
    public Collider col;

    protected FurnitureState curState;

    Transform phand;
    Vector3 holdpos;
    Quaternion holdrot;

    Transform pPos;

    protected ICanHold holder;

    void Start() {
        startPos = transform.position;
        curState = new GroundedState(this);
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
}