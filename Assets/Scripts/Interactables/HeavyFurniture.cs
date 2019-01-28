using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyFurniture : Furniture {
    // Start is called before the first frame update
    [SerializeField] Joint joint;

    void Start() {

    }

    // Update is called once per frame
    void Update() {

    }

    public override void Interact(Player p) {
        if (p.CurFurniture() == null) {
            GetPickedUp(p);
        }
    }

    public void Drag(Vector3 dir) {

    }

    public override void Release(ICanHold h) {
        base.Release(h);
        joint.connectedBody = null;
    }

    void GetPickedUp(ICanHold h) {
        h.PickUp(this);
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
    }
}