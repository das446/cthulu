using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmallItem : Furniture, IPickUpable {
    [SerializeField] float speed;
    [SerializeField] Rigidbody rb;
    [SerializeField] Collider col;
    
    public void Release(ICanHold p){
        Vector3 dir = p.GetThrowDir();
        rb.isKinematic = true;
        transform.parent = null;
        col.enabled = true;
        rb.useGravity = true;
        rb.AddForce(dir);
        
    }

    public void GetPickedUp(ICanHold p){
        transform.parent = p.Hand;
        transform.localPosition = Vector3.zero;
        rb.isKinematic = true;
        rb.useGravity = false;
        col.enabled = false;
    }

    public override void Interact(Player p){
        GetPickedUp(p);
    }

    public bool CanBePickedUp(ICanHold h)
    {
        return curState.Grounded();
    }
}