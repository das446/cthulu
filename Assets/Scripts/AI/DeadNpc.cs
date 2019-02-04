using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadNpc : MonoBehaviour, IPickUpable, IEvaluated
{

    [SerializeField] Rigidbody rb;
    [SerializeField] SpringJoint joint;
    

    public bool CanBePickedUp(ICanHold h)
    {
        return true;
    }

    public float Evaluate(Npc npc, Room r)
    {
        return -50;
    }

    public void GetPickedUp(ICanHold h)
    {
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
    }

    public void Release(ICanHold h)
    {
        Vector3 dir = h.GetThrowDir();
        rb.AddForce(dir);
        Destroy(joint);
    }

}
