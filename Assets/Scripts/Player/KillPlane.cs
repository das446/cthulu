using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillPlane : MonoBehaviour
{
   public Player p;
  public Vector3 pStartpos;
    void Start()
    {
        Vector3 passbyCopy = p.gameObject.transform.position;
        pStartpos = passbyCopy;
    }

    void  OnTriggerEnter(Collider collider)
    {
        
        Debug.Log("Collision Dectected");
        if (collider.gameObject == p.gameObject)
        {
            collider.gameObject.transform.position = pStartpos;
            Debug.Log("Player escaped level bounds, warping to start position");
        }
        else
        { 
        Debug.Log("Object not player, ignoring");
        }
    }


}
