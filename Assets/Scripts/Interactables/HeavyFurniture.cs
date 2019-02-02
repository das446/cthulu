using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyFurniture : Furniture,IPickUpable {
    // Start is called before the first frame update
    [SerializeField] SpringJoint joint;
    Vector3 prevPos;

    public override void Interact(Player p, Vector3 pos) {
        if (p.CurFurniture() == null) {
            GetPickedUp(p, pos);
        }
    }

    public void Drag(Vector3 dir) {

    }

    void Start() {
        startPos = transform.position;
        curState = new GroundedState(this);
        prevPos = transform.position;
    }

    void Update() {
        float d = Vector3.Distance(transform.position, prevPos);
        if (d > 0.01f) {
            TakeDamage(d);
        }
        prevPos = transform.position;
    }

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

    public bool CanBePickedUp(ICanHold h)
    {
        throw new System.NotImplementedException();
    }

    public void GetPickedUp(ICanHold h)
    {
        throw new System.NotImplementedException();
    }
}