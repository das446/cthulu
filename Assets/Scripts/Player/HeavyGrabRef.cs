using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyGrabRef : MonoBehaviour
{
    //Acts a ref for hand when player stops moving heavy objects
    public Transform hand;
   
   void Start ()
   {
       transform.position = hand.position;
   } 
   
    
}
