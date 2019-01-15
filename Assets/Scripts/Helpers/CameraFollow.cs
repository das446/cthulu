using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public GameObject target;

    // Update is called once per frame
    void Update()
    {
       Vector3 t = target.transform.position;
       t.y = transform.position.y;
       transform.position = t; 
    }
}
