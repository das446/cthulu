using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmallItem : Interactable, IPickUpable {
    [SerializeField] float speed;
    [SerializeField] Rigidbody rb;
    [SerializeField] Collider col;
    
    public void Release(Player p){
        Debug.Log("Release");
        Vector3 dir = Camera.main.transform.forward*speed;
        rb.isKinematic = true;
        transform.parent = null;
        col.enabled = true;
        rb.useGravity = true;
        rb.AddForce(dir);
        
    }

    public void GetPickedUp(Player p){
        transform.parent = p.hand;
        transform.localPosition = Vector3.zero;
        rb.isKinematic = true;
        rb.useGravity = false;
        col.enabled = false;
        p.curItem = this;
    }

    public override void Interact(Player p){
        GetPickedUp(p);
    }


}