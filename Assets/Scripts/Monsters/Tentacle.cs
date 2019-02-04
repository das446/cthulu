using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tentacle : Monster, ICanHold {
    [SerializeField] IPickUpable held;
    [SerializeField] float range;
    [SerializeField] BoxCollider hitbox;

    public Transform Hand =>
        throw new System.NotImplementedException();

    public float Power =>
        throw new System.NotImplementedException();

    public IPickUpable CurHeld() {
        return held;
    }

    public override void FurnitureContact(Furniture furniture) {
        GetHit((int) furniture.weight);
        //Randomly grab it
    }

    public Vector3 GetThrowDir() {
        //throw at NPC or player
        throw new System.NotImplementedException();
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
            npc.GetPickedUp(this);
        }
    }

}