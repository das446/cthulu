using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class mk_ai_mv : MonoBehaviour
{

    // Use this for initialization
    // Update is called once per frame
    private Camera cam;
    private float distence;
    void Start()
    {
        distence = transform.GetComponent<Drag>().distence;
        cam = transform.GetComponent<Drag>().cam;
    }
    void Update()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(2F, 2F, 0));
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            //print("I'm looking at " + hit.transform.name + " " + hit.distance);
            // if point at something under a close enough distance
            //hit F key to drag the box
            if (hit.distance <= distence)
            {
                if (hit.transform.tag == "AI")
                {
                    if (Input.GetKeyDown(KeyCode.Alpha1))
                    {
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[0];
                        FindObjectOfType<AudioManagement>().Play("MoveKitchen");

                    }
                    else if (Input.GetKeyDown(KeyCode.Alpha2))
                    {
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[1];
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().move = true;
                        FindObjectOfType<AudioManagement>().Play("MoveStudy");
                    }
                    else if (Input.GetKeyDown(KeyCode.Alpha3))
                    {
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[1];
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().move = true;
                        FindObjectOfType<AudioManagement>().Play("MoveLibrary");
                    }
                    else if (Input.GetKeyDown(KeyCode.Alpha4))
                    {
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[1];
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().move = true;
                        FindObjectOfType<AudioManagement>().Play("MovePantry");
                    }
                    else if (Input.GetKeyDown(KeyCode.Alpha5))
                    {
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[1];
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().move = true;
                        FindObjectOfType<AudioManagement>().Play("MoveDining");
                    }
                    else if (Input.GetKeyDown(KeyCode.Alpha6))
                    {
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[1];
                        //GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<moveToRoom>().move = true;
                        FindObjectOfType<AudioManagement>().Play("MoveFamily");
                    }
                }
            }
        }
    }
}
