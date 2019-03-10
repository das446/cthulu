using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadNpc : MonoBehaviour, IPickUpable, IEvaluated {

    [SerializeField] Rigidbody rb;
    [SerializeField] FixedJoint joint;
    ICanHold holder;
    [SerializeField] float Weight = 1;

    public float weight => Weight;

    public bool CanBePickedUp(ICanHold h) {
        return true;
    }

    public float Evaluate(Npc npc, Room r) {
        return -50;
    }

    public void GetPickedUp(ICanHold h) {
        holder = h;
        transform.position = h.Hand.transform.position;
        transform.localPosition = Vector3.zero;
        StartCoroutine(SetJoint(h));
    }

    //this is dumb;
    IEnumerator SetJoint(ICanHold h) {
        for (int i = 0; i < 10; i++) {

            yield return new WaitForFixedUpdate();
        }
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
    }

    public void Release(ICanHold h) {
        Destroy(joint);
        Vector3 dir = h.GetThrowDir();
        rb.AddForce(dir);
    }

    // void FixedUpdate() {
    //     if (holder != null) {
    //         Debug.Log("Pos");
    //         transform.localPosition = Vector3.zero;
    //     }
    // }

}