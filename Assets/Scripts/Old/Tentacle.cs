using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tentacle : Monster, ICanHold
{
    [SerializeField] IPickUpable held;

    [SerializeField] Transform tip;
    [SerializeField] int power;

    public Transform Hand => tip;

    public float Power => power;


    private int test;

    public IPickUpable CurHeld()
    {
        return held;
    }



    public override void FurnitureContact(Furniture furniture)
    {
        GetHit((int)furniture.weight);
        //Randomly grab it
        throw new System.NotImplementedException();
    }



    public Vector3 GetThrowDir()
    {
        //throw at NPC
        throw new System.NotImplementedException();
    }

    public override void OnSpawn()
    {
        Debug.Log("No behaivor Made when respaw!");
    }

    public void PickUp(IPickUpable pickUpable)
    {
        held = pickUpable;
        held.GetPickedUp(this);
    }

    public void Release(IPickUpable pickUpable)
    {
        held = null;
    }

}