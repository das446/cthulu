using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;

public class AI : MonoBehaviour {

    AudioSource scream;
    public bool scare = false;
    public GameObject door;
	public RawImage npcMenu;
	public GameObject[] roomPoints;
    //public GameObject mainPoint;
    // Use this for initialization
    void Start ()
    {
		roomPoints = GameObject.FindGameObjectsWithTag("roomPoint");
		npcMenu = GameObject.FindGameObjectsWithTag("playerInteractMenu")[0].GetComponent<RawImage>();
		npcMenu.enabled = false;
		scream = GetComponent<AudioSource>();
        door = GameObject.FindGameObjectsWithTag("Door")[0];
        StartCoroutine(RoomRecognition());
    }

    IEnumerator RoomRecognition()
    {
        yield return new WaitForSeconds(3);
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
        if(scare)
        {
            scream.Play();
        }
        if (scare || gameObject.GetComponent<Inspection>().finishInspection) {
            //transform.LookAt(new Vector3(door.transform.position.x,transform.position.y, door.transform.position.z));
            //rb.AddForce((transform.forward) *  MoveSpeed);
            //move(new Vector3(door.transform.position.x, transform.position.y, door.transform.position.z));
            //print("im scared!!!!");
            gameObject.GetComponent<Inspection>().setLocation(door.transform.position);
        }
		if(Input.GetKeyDown(KeyCode.Alpha1) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[0].transform.position;
			}
		else if(Input.GetKeyDown(KeyCode.Alpha2) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[1].transform.position;
			}
		else if(Input.GetKeyDown(KeyCode.Alpha3) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[2].transform.position;
			}
		else if(Input.GetKeyDown(KeyCode.Alpha4) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[3].transform.position;
			}
		else if(Input.GetKeyDown(KeyCode.Alpha5) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[4].transform.position;
			}
		else if(Input.GetKeyDown(KeyCode.Alpha6) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[5].transform.position;
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
		else if (other.tag == "Player" )
        {
            npcMenu.enabled = true;
        }
    }
	private void OnTriggerExit(Collider other)
    {
		if (other.tag == "Player" )
        {
            npcMenu.enabled = false;
        }
	}
    /*
    public void move(Vector3 position) {
        agent.SetDestination(position);
    }
    */

}
