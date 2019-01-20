using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IPickUpable {
    void GetPickedUp(Player p);
    void Release(Player p);
}