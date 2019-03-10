using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadNpc : Interactable, IPickUpable, IEvaluated
{

    [SerializeField] Rigidbody rb;
    [SerializeField] SpringJoint joint;
    ICanHold holder;
    [SerializeField] float Weight = 1;

    bool held;

    public float weight => Weight;

    [SerializeField] CapsuleCollider collider;

    public bool CanBePickedUp(ICanHold h)
    {
        return true;
    }

    void FixedUpdate()
    {
        if (!held)
        {
            float x = (joint.transform.position.x - transform.position.x)/2;
            float z = (joint.transform.position.z - transform.position.z)/2;
            Vector3 v = collider.center;
            v.x = x;
            v.z = z;
            collider.center = v;
        }
    }

    public float Evaluate(Npc npc, Room r)
    {
        return -50;
    }

    public void GetPickedUp(ICanHold h)
    {
        holder = h;
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
        joint.spring = 200;
        held = true;
    }

    //this is dumb

    public void Release(ICanHold h)
    {
        joint.spring = 0;
        Vector3 dir = h.GetThrowDir();
        held = false;
    }

    public override void Interact(Player p)
    {

        Debug.Log("Get");
        if (p.CurHeld() == null)
        {
            GetPickedUp(p);
            p.PickUp(this);
        }
    }

    // void FixedUpdate() {
    //     if (holder != null) {
    //         Debug.Log("Pos");
    //         transform.localPosition = Vector3.zero;
    //     }
    // }

}