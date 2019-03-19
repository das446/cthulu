using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class Doll : Furniture, IPossesable, IPickUpable {

    Ghost ghost;

    [SerializeField] float turn = 10;
    [SerializeField] Animator anim;

    Vector3 targetPos;
    GameObject target;
    [SerializeField] float speed;

    public bool CanBePickedUp(ICanHold h) {
        return curState.Grounded();
    }

    new void Start() {
        base.Start();
        Ghost.possesables.Add(this);
    }

    public override void Interact(Player p) {
        if (p.CurHeld() == null) {
            GetPickedUp(p);
            p.PickUp(this);
        }
    }

    public void GetPickedUp(ICanHold h) {

        curState = new HeldState(this, h);
        transform.parent = h.Hand;
        transform.localPosition = Vector3.zero;
        transform.rotation = Quaternion.identity;
        rb.angularVelocity = Vector3.zero;
        rb.velocity = Vector3.zero;
        rb.useGravity = false;
        rb.isKinematic = false;
        col.enabled = false;
        holder = h;
        gameObject.SetLayerRecursively(heldLayer);
        ghost?.UnPossess();
        UnPossess();

    }

    public void Release(ICanHold h) {

        curState = new InAirState(this, h);
        transform.parent = null;
        rb.useGravity = true;
        col.enabled = true;
        col.isTrigger = false;
        Vector3 dir = holder.GetThrowDir();
        rb.AddForce(dir * holder.Power, ForceMode.Impulse);
        gameObject.SetLayerRecursively(0);
        holder = null;
        TakeDamage(1);
    }

    public void GetPossessed(Ghost g) {
        anim.SetBool("isRunning", true);
        ghost = g;
        rb.isKinematic = false;
        rb.useGravity = false;
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
        col.isTrigger = true;
        gameObject.SetLayerRecursively(13);
    }

    public void SetTarget(GameObject g) {

        target = g;
        targetPos = g.transform.position;
        targetPos.y = transform.position.y;

    }

    public void UnPossess() {
        ghost = null;
        anim.SetBool("isRunning", false);
    }

    public bool Possessed() {
        return ghost != null;
    }

    public bool Possessable() {
        return holder == null;
    }

    public void GhostUpdate() {
        if (target != null) {
            targetPos = target.transform.position;
        }
        transform.position = Vector3.MoveTowards(transform.position, targetPos, speed * Time.deltaTime);
        transform.LookAt(targetPos);

        // if near npc scare it

        if (Vector3.Distance(transform.position, targetPos) <= 0.1f) {
            SetTarget(target);
        }
    }

    public override float Evaluate(Npc npc, Room r) {
        if (ghost != null) {
            return -20;
        } else {
            return 10;
        }
    }

    public void TargetBuyer(Npc npc) {
        target = npc.gameObject;
    }

    private void OnDrawGizmosSelected() {
        Gizmos.DrawSphere(targetPos, 1);
    }

}