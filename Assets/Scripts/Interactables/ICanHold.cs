using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface ICanHold {
    void PickUp(IPickUpable i);
    void Release(IPickUpable i);
    Transform Hand {
        get;
    }
    float Power {
        get;
    }

    GameObject obj{
        get;
    }

    IPickUpable CurHeld();

    Vector3 GetThrowDir();
}