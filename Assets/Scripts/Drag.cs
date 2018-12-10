using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Drag : MonoBehaviour {

    public Camera cam;
    public float distence;
    public bool hold;
	public RawImage handIcon;
    void Start()
    {
		handIcon = GameObject.FindGameObjectsWithTag("handIcon")[0].GetComponent<RawImage>();
    }

    void Update()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(0.5F, 0.5F, 0));
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            //Debug.Log(hit.transform.tag);
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

                } else if (Input.GetMouseButtonDown(0)) {
                    if (hit.rigidbody != null)
                    {
                        hit.rigidbody.velocity = GetComponent<Rigidbody>().velocity;
                        hit.transform.GetComponent<ScoreObject>().hasMoved();
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
