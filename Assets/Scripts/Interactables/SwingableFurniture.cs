using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwingableFurniture : Furniture
{
    [SerializeField] int selfDamage;
    public override void Use(ICanHold holder){
        Swing(holder);
    }

    void Swing(ICanHold holder){
        

        TakeDamage(selfDamage);
    }
}
