using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;

public class Tentacle : Monster, ICanHold {
    [SerializeField] IPickUpable held;
    [SerializeField] float range;
    [SerializeField] BoxCollider hitbox;
    [SerializeField] Transform hand;
    [SerializeField] float power;

    public Transform Hand => hand;

    public float Power => power;

    public IPickUpable CurHeld() {
        return held;
    }

    public override void FurnitureContact(Furniture furniture) {
        GetHit((int) furniture.weight);
        //Randomly grab it
    }

    public Vector3 GetThrowDir() {
        //throw at NPC or player
        return transform.forward * power;
    }

    public override void OnSpawn() {
        SetCollider();
    }

    void SetCollider() {
        Vector3 center = hitbox.center;
        Vector3 bounds = hitbox.size;
        center.x = range / 2;
        bounds.x = range;
        bounds.z = range;
        hitbox.center = center;
        hitbox.size = bounds;

    }

    public void PickUp(IPickUpable pickUpable) {
        held = pickUpable;
        held.GetPickedUp(this);
    }

    public void Release(IPickUpable pickUpable) {
        held.Release(this);
        held = null;
    }

    void OnTriggerEnter(Collider other) {
        Debug.Log(other.gameObject);
        Npc npc = other.GetComponent<Npc>();
        if (npc != null) {
            PickUp(npc);
            StartCoroutine(DelayThrow(10));
        }
    }

    IEnumerator DelayThrow(float delay) {
        yield return new WaitForSeconds(delay);
        Release(held);
    }

    public override void Do(DoEvent de)
    {
        throw new NotImplementedException();
    }
}