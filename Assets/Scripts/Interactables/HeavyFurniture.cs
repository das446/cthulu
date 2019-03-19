using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyFurniture : Furniture, IPickUpable {
    // Start is called before the first frame update
    [SerializeField] SpringJoint joint;
    Vector3 prevPos;

    bool held;

    public override void Interact(Player p, Vector3 pos) {
        if (p.CurHeld() == null) {
            Debug.Log("Interact");
            GetPickedUp(p, pos);
            p.PickUp(this);
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
        if (d > 0.01f && held) {
            TakeDamage(d);
        }
        prevPos = transform.position;
    }

    public void Release(ICanHold h) {
        rb.useGravity = true;
        DisableJoint();
    }

    private void DisableJoint() {
        Debug.Log("DisableJoint");
        joint.connectedBody = null;
        joint.spring = 0;
    }

    void GetPickedUp(ICanHold h, Vector3 pos) {
        EnableJoint(h, pos);
    }

    private void EnableJoint(ICanHold h, Vector3 pos) {
        Debug.Log("Enable Joint");
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
        joint.spring = 50;
        joint.anchor = pos;
    }

    public bool CanBePickedUp(ICanHold h) {
        return true;
    }

    public void GetPickedUp(ICanHold h) {
        EnableJoint(h, transform.position);
    }
}