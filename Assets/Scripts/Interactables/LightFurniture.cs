using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class LightFurniture : Furniture, IPickUpable {

    // new void Start(){
    //     base.Start();
    //     rb.centerOfMass = transform.position + Vector3.down;
    // }

    public override void Interact(Player p) {
        if (p.CurHeld() == null) {
            GetPickedUp(p);
            p.PickUp(this);
        }
    }

    public void GetPickedUp(ICanHold h) {
        curState = new HeldState(this, h);
        transform.parent = h.Hand;
        transform.localPosition = Vector3.zero;
        transform.rotation = Quaternion.identity;
        rb.angularVelocity = Vector3.zero;
        rb.velocity = Vector3.zero;
        rb.useGravity = false;
        rb.isKinematic = false;
        col.enabled = false;
        holder = h;
        gameObject.SetLayerRecursively(heldLayer);

    }

    public void Release(ICanHold h) {
        curState = new InAirState(this, h);
        transform.parent = null;
        rb.useGravity = true;
        col.enabled = true;
        Vector3 dir = holder.GetThrowDir();
        rb.AddForce(dir * holder.Power, ForceMode.Impulse);
        gameObject.SetLayerRecursively(0);
        holder = null;
        this.DoAfterTime(() => TakeDamage(10),1);
    }

    public bool CanBePickedUp(ICanHold h) {
        return curState.Grounded();
    }

    private void OnCollisionEnter(Collision other) {
        Monster m = other.collider.GetComponent<Monster>();
        if (m != null) {
            m.FurnitureContact(this);
        } else {
            SetState(new GroundedState(this));
        }
    }

}