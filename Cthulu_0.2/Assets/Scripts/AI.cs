﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;

public class AI : MonoBehaviour {

    public AudioSource scream;
    public AudioClip screamreal;
    public bool scare = false;
    public GameObject door;
	public RawImage npcMenu;
	public GameObject[] roomPoints;
    public GameObject[] tentacles;

    bool oneScream = false;
    //public GameObject mainPoint;
    // Use this for initialization
    void Start ()
    {
        tentacles = GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().tentacles;
        roomPoints = GameObject.FindGameObjectsWithTag("roomPoint");
		npcMenu = GameObject.FindGameObjectsWithTag("playerInteractMenu")[0].GetComponent<RawImage>();
		npcMenu.enabled = false;
		scream = GetComponent<AudioSource>();
        //door = GameObject.FindGameObjectsWithTag("Door")[0];
        StartCoroutine(RoomRecognition());
    }

    IEnumerator RoomRecognition()
    {
        yield return new WaitForSeconds(3);
    }


    // Update is called once per frame
    void Update () {
        RaycastHit hit;
        if (Physics.Linecast(gameObject.transform.position, tentacles[0].transform.position, out hit) && tentacles[0].activeInHierarchy)
        {
            if (hit.transform.tag == "Tentacle")
            {
                Debug.Log("hello tentacool1");
            }

        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            if (hit.transform.tag == "Tentacle")
            {
                Debug.Log("hello tentacool2");
            }
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            if (hit.transform.tag == "Tentacle")
            {
                Debug.Log("hello tentacool3");
            }
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            if (hit.transform.tag == "Tentacle")
            {
                Debug.Log("hello tentacool4");
            }
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            if (hit.transform.tag == "Tentacle")
            {
                Debug.Log("hello tentacool5");
            }
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            if (hit.transform.tag == "Tentacle")
            {
                Debug.Log("hello tentacool6");
            }
        }
        /*
        for (int i = 0; i < GameObject.FindGameObjectsWithTag("Tentacle").Length; i++) {
            if (GameObject.FindGameObjectsWithTag("Tentacle")[i].GetComponent<Tentacle>().alive == true) {
                scare = true;
                break;
            }
        }
        */
        if (scare)
        {
            scare = true;
            Screamer();
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
                FindObjectOfType<AudioManagement>().Play("MoveKitchen");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha2) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[1].transform.position;
                FindObjectOfType<AudioManagement>().Play("MoveStudy");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha3) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[2].transform.position;
                FindObjectOfType<AudioManagement>().Play("MoveLibrary");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha4) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[3].transform.position;
                FindObjectOfType<AudioManagement>().Play("MovePantry");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha5) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[4].transform.position;
                FindObjectOfType<AudioManagement>().Play("MoveDining");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha6) && npcMenu.enabled)
			{
				this.gameObject.transform.position = roomPoints[5].transform.position;
                FindObjectOfType<AudioManagement>().Play("MoveFamily");
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

    void Screamer()
    {
        if (scare && !oneScream)
        {
            scream.PlayOneShot(screamreal, 1f);
            oneScream = true;
        }
    }
    /*
    public void move(Vector3 position) {
        agent.SetDestination(position);
    }
    */

}
