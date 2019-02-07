using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightFurniture : Furniture, IPickUpable {

    public override void Interact(Player p) {
        if (p.CurItem() == null) {
            GetPickedUp(p);
            p.PickUp(this);
        }
    }

    public override void Use(ICanHold h) {
        Release(h);
        h.Release(this);
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
        gameObject.layer = heldLayer;

    }

    public void Release(ICanHold h) {
        curState = new InAirState(this, h);
        transform.parent = null;
        rb.useGravity = true;
        col.enabled = true;
        Vector3 dir = holder.GetThrowDir();
        rb.AddForce(dir * holder.Power, ForceMode.Impulse);
        gameObject.layer = 0;
        holder = null;
        Debug.Log("Release");
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