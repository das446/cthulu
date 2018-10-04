using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Drag : MonoBehaviour {

    public Camera cam;
    public float distence;
    void Start()
    {
    }

    void Update()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(0.5F, 0.5F, 0));
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            //print("I'm looking at " + hit.transform.name + " " + hit.distance);
            // if point at something under a close enough distance
            //hit F key to drag the box
            if (hit.distance <= distence)
            {
                if (Input.GetKey(KeyCode.F)) {
                    if (hit.rigidbody != null)
                    {
                        hit.rigidbody.velocity = GetComponent<Rigidbody>().velocity;
                    }

                }
            }
        }
        else
        {
            //print("I'm looking at nothing!");
        }
    }
}
