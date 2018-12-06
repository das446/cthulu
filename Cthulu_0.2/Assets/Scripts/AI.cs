using System;
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
	public List<GameObject> roomPoints = new List<GameObject>();
    public List<GameObject> tentacles = new List<GameObject>();
	public NavMeshAgent agent;
	public int NPCNumber;
	private bool playerInCollider;
    private bool sentAway = false;

    bool oneScream = false;
    //public GameObject mainPoint;
    // Use this for initialization
    void Start ()
    {
        tentacles = GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().tentacles;
		roomPoints = GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().roomPoints;
		npcMenu = GameObject.FindGameObjectsWithTag("playerInteractMenu")[0].GetComponent<RawImage>();
		npcMenu.enabled = false;
		scream = GetComponent<AudioSource>();
        door = GameObject.FindGameObjectsWithTag("Door")[0];
        StartCoroutine(RoomRecognition());
    }

	public void setNPCNumber(int numberNPC)
	{
		NPCNumber = numberNPC;
	}
	public int getNPCNumber()
	{
		return NPCNumber;
	}
	
    IEnumerator RoomRecognition()
    {
        yield return new WaitForSeconds(3);
    }


    // Update is called once per frame
    void Update () {
        if (scare && !sentAway)
        {
            agent.speed = 3.5f;
            agent.SetDestination(GameObject.FindGameObjectsWithTag("exitPoint")[0].transform.position);
            Screamer();
            sentAway = true;
        }
        RaycastHit hit;
        if (Physics.Linecast(gameObject.transform.position, tentacles[0].transform.position, out hit) && tentacles[0].activeInHierarchy)
        {
            scare = true;
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            scare = true;
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            scare = true;
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            scare = true;
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            scare = true;
        }
        else if (Physics.Linecast(gameObject.transform.position, tentacles[1].transform.position, out hit) && tentacles[1].activeInHierarchy)
        {
            scare = true;
        }

		if(Input.GetKeyDown(KeyCode.Alpha1) && npcMenu.enabled && playerInCollider && !scare)
			{
				GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().sendNPCtoLocation(NPCNumber,0);
                FindObjectOfType<AudioManagement>().Play("MoveKitchen");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha2) && npcMenu.enabled && playerInCollider && !scare)
			{
				GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().sendNPCtoLocation(NPCNumber,1);
                FindObjectOfType<AudioManagement>().Play("MoveStudy");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha3) && npcMenu.enabled && playerInCollider && !scare)
			{
				GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().sendNPCtoLocation(NPCNumber,2);
                FindObjectOfType<AudioManagement>().Play("MoveLibrary");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha4) && npcMenu.enabled && playerInCollider && !scare)
			{
				GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().sendNPCtoLocation(NPCNumber,3);
                FindObjectOfType<AudioManagement>().Play("MovePantry");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha5) && npcMenu.enabled && playerInCollider && !scare)
			{
				GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().sendNPCtoLocation(NPCNumber,4);
                FindObjectOfType<AudioManagement>().Play("MoveDining");
        }
		else if(Input.GetKeyDown(KeyCode.Alpha6) && npcMenu.enabled && playerInCollider && !scare)
			{
				GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().sendNPCtoLocation(NPCNumber,5);
                FindObjectOfType<AudioManagement>().Play("MoveFamily");
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player" )
        {
            npcMenu.enabled = true;
			playerInCollider = true;
        }
    }
	private void OnTriggerExit(Collider other)
    {
		if (other.tag == "Player" )
        {
            npcMenu.enabled = false;
			playerInCollider = false;
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
