using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface ICanHold {
    void PickUp(Furniture f);
    void Release(Furniture f);
    Transform Hand{
        get;
    }
    float Power {
        get;
    }

    Vector3 GetThrowDir();
}