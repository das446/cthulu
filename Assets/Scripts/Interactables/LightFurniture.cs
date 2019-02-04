using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightFurniture : Furniture, IPickUpable {

    public override void Interact(Player p) {
        if (p.CurFurniture() == null) {
            GetPickedUp(p);
        }
    }

    public override void Use(ICanHold h) {
        ThrowObject(h);
    }

    public void GetPickedUp(ICanHold h) {
        curState = new HeldState(this, h);
        transform.parent = h.Hand;
        transform.localPosition = Vector3.zero;
        rb.useGravity = false;
        rb.isKinematic = false;
        col.enabled = false;
        holder = h;
    }

    void ThrowObject(ICanHold h) {
        curState = new InAirState(this, h);
        rb.isKinematic = true;
        transform.parent = null;
        rb.useGravity = true;
        col.enabled = true;
        holder = null;
        Vector3 dir = holder.GetThrowDir();
        rb.AddRelativeForce(dir * holder.Power, ForceMode.Impulse);
    }

    public bool CanBePickedUp(ICanHold h)
    {
        return curState.Grounded();
    }

    private void OnCollisionEnter(Collision other)
    {
        Monster m = other.collider.GetComponent<Monster>();
        if(m!=null){
            m.FurnitureContact(this);
        }
        else{
            SetState(new GroundedState(this));
        }
    } 
}