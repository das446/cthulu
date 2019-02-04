using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IPickUpable {
    bool CanBePickedUp(ICanHold h);
    void GetPickedUp(ICanHold h);
    void Release(ICanHold h);
}