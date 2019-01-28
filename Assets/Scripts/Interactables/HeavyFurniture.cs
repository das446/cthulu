using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyFurniture : Furniture {
    // Start is called before the first frame update
    [SerializeField] SpringJoint joint;

    public override void Interact(Player p, Vector3 pos) {
        if (p.CurFurniture() == null) {
            GetPickedUp(p, pos);
        }
    }

    public void Drag(Vector3 dir) {

    }

    // public void FixedUpdate() {
    //     if (curState.Held()) {
    //         Vector3 dir =  ;
    //         Drag(dir);
    //     }
    // }

    public override void Release(ICanHold h) {
        base.Release(h);
        DisableJoint();
    }

    private void DisableJoint() {
        joint.connectedBody = null;
        joint.spring = 0;
    }

    void GetPickedUp(ICanHold h, Vector3 pos) {
        h.PickUp(this);
        EnableJoint(h, pos);
    }

    private void EnableJoint(ICanHold h, Vector3 pos) {
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
        joint.spring = 50;
        joint.anchor = pos;
    }
}