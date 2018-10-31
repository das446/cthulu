using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Drag : MonoBehaviour {

    public Camera cam;
    public float distence;
    public bool hold;
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
                if (hold == false && hit.transform.tag == "pickable" && Input.GetMouseButtonDown(0)) {
                    hit.rigidbody.isKinematic = true;
                    hit.transform.parent = cam.transform;
                    hold = true;
                    hit.transform.GetComponent<ScoreObject>().hasMoved();

                } else if (hold == true && Input.GetMouseButtonDown(0)) {
                    hit.rigidbody.isKinematic = false;
                    hit.transform.parent = null;
                    hold = false;

                } else if (Input.GetMouseButton(0)) {
                    if (hit.rigidbody != null)
                    {
                        hit.rigidbody.velocity = GetComponent<Rigidbody>().velocity;
                        // hit.transform.GetComponent<ScoreObject>().hasMoved();
                    }
                    if(hit.transform.tag == "door")
                    {
                        hit.transform.GetComponent<Rigidbody>().freezeRotation = !hit.transform.GetComponent<Rigidbody>().freezeRotation;
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
