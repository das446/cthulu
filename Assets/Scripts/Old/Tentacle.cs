using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tentacle : Monster, ICanHold {
    public Transform Hand =>
        throw new System.NotImplementedException();

    public float Power =>
        throw new System.NotImplementedException();

    public Furniture CurFurniture() {
        throw new System.NotImplementedException();
    }

    public override void Die() {
        throw new System.NotImplementedException();
    }

    public override void FurnitureContact(Furniture furniture) {
        throw new System.NotImplementedException();
    }

    public override void GetHit() {
        throw new System.NotImplementedException();
    }

    public Vector3 GetThrowDir() {
        throw new System.NotImplementedException();
    }

    public override void OnSpawn() {
        throw new System.NotImplementedException();
    }

    public void PickUp(Furniture f) {
        throw new System.NotImplementedException();
    }

    public void Release(Furniture f) {
        throw new System.NotImplementedException();
    }

}