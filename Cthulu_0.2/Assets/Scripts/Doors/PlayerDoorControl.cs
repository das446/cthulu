using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDoorControl : MonoBehaviour 
{
	public float distence;
	public Camera cam;
	
	// Update is called once per frame
	void Update () 
	{
		Ray ray = cam.ViewportPointToRay(new Vector3(0.5F, 0.5F, 0));
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            if (hit.distance <= distence && hit.transform.tag == "door")
            {
				Door doorScript = hit.transform.GetComponent<Door>();
				if(Input.GetMouseButtonDown(0))
				{
                        
                        if(doorScript.checkLock() == false)
                        {
                            Debug.Log(doorScript.checkOpen());
                            if(doorScript.checkOpen() == false)
                            {
                                Debug.Log("open door");
                                doorScript.open();
                            }
                            else
                            {
                                Debug.Log("close door");
                                doorScript.close();
                            }
                        }
				}
				else if(Input.GetMouseButton(1))
				{
					doorScript.lockDoor();
					Debug.Log(doorScript.checkLock());
				}
			}
		}

	}
}
