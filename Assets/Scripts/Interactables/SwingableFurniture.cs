using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwingableFurniture : Furniture, IPickUpable
{
    [SerializeField] int selfDamage;

    public bool CanBePickedUp(ICanHold h)
    {
        throw new System.NotImplementedException();
    }

    public void GetPickedUp(ICanHold h)
    {
        throw new System.NotImplementedException();
    }

    public void Release(ICanHold h)
    {
        throw new System.NotImplementedException();
    }

    public void Use(ICanHold holder){
        Swing(holder);
    }

    void Swing(ICanHold holder){
        

        TakeDamage(selfDamage);
    }
}
