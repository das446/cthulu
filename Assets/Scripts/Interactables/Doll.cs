using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class Doll : Furniture, IPossesable, IPickUpable {

    Ghost ghost;

    [SerializeField] float turn = 10;
    [SerializeField] Animator anim;

    Vector3 target;
    [SerializeField] float speed;

    public bool CanBePickedUp(ICanHold h) {
        return curState.Grounded();
    }

    public override void Interact(Player p) {
        if (p.CurItem() == null) {
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
        anim.SetFloat("walk", 1);
        ghost = g;
        rb.isKinematic = false;
        rb.useGravity = false;
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
        col.isTrigger = true;
        UpdateTarget();
    }

    private void UpdateTarget() {
        float x = Random.Range(-15f, 15f);
        float z = Random.Range(-15f, 15f);
        target = new Vector3(x, transform.position.y, z);
        transform.LookAt(target);
    }

    public void UnPossess() {
        ghost = null;
        anim.SetFloat("walk", 0);
    }

    public bool Possessed() {
        return ghost != null;
    }

    public bool Possessable() {
        return holder == null;
    }

    public void GhostUpdate() {
        transform.position = Vector3.MoveTowards(transform.position, target, speed * Time.deltaTime);
        if (Vector3.Distance(transform.position, target) <= 0.1f) {
            UpdateTarget();
        }
    }

    public override float Evaluate(Npc npc, Room r) {
        if (ghost != null) {
            return -20;
        } else {
            return 10;
        }
    }

    new void Start() {
        base.Start();
        Ghost.possesables.Add(this);
    }
}