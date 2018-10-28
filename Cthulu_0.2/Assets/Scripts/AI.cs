using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AI : MonoBehaviour {

    public bool scare = false;
    public GameObject door;
    //public GameObject mainPoint;
    // Use this for initialization
    void Start () {
        door = GameObject.FindGameObjectsWithTag("Door")[0];
    }
	

	// Update is called once per frame
	void Update () {
        /*
        for (int i = 0; i < GameObject.FindGameObjectsWithTag("Tentacle").Length; i++) {
            if (GameObject.FindGameObjectsWithTag("Tentacle")[i].GetComponent<Tentacle>().alive == true) {
                scare = true;
                break;
            }
        }
        */
        if (scare || gameObject.GetComponent<Inspection>().finishInspection) {
            //transform.LookAt(new Vector3(door.transform.position.x,transform.position.y, door.transform.position.z));
            //rb.AddForce((transform.forward) *  MoveSpeed);
            //move(new Vector3(door.transform.position.x, transform.position.y, door.transform.position.z));
            //print("im scared!!!!");
            gameObject.GetComponent<Inspection>().setLocation(door.transform.position);
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Door" && scare == true)
        {
            Destroy(gameObject);
        }
        else if(other.tag == "Door" && scare == false && gameObject.GetComponent<Inspection>().finishInspection == true)
        {
            GameObject.FindGameObjectsWithTag("Timer")[0].GetComponent<countDown>().numberOfFinish +=1;
            Destroy(gameObject);

        }
    }
    /*
    public void move(Vector3 position) {
        agent.SetDestination(position);
    }
    */

}
