using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineOfSightGetCollisions : MonoBehaviour
{
    
    //Attached to eyeCollider to retrieve list of collsions
    //MeshCollider eyeMesh;
    public List<Collider> cols = new List<Collider>();
    

    // Start is called before the first frame update
    void Start()
    {
    //eyeMesh = GetComponent<MeshCollider>();
    }

   //called when something enters the trigger
 void OnTriggerEnter(Collider eyeMesh)
 {
     //if the object is not already in the list
    //if(eyeMesh.gameObject.layer == layer )
   // {

        if(!cols.Contains(eyeMesh))
        {
            cols.Add(eyeMesh);
        }
    //}
 }
 
 //called when something exits the trigger
 void OnTriggerExit(Collider eyeMesh)
 {
    
     if(cols.Contains(eyeMesh))
     {
         cols.Remove(eyeMesh);
     }
     
 }
/////
}
