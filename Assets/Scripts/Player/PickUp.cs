using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUp : MonoBehaviour
{
    [SerializeField] Transform hand;
    public IPickUpable curItem;

    void PickUp(IPickUpable p){

    }

    void Drop(IDropable d){

    }

    void Throw(IThrowable t){
        
    }
}
