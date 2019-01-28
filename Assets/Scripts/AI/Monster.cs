using System;
using UnityEngine;

public abstract class Monster : MonoBehaviour
{

    protected int hp;

    public void FurnitureContact(Furniture furniture)
    {
        throw new NotImplementedException();
    }

    public void Die(){
        
    }
}