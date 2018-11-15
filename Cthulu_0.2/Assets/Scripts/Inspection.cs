using System.Collections;
//using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
//using UnityEngine.UI;

public class Inspection : MonoBehaviour {
	
	//[SerializeField] private Text uiTextWinLose;
	//[SerializeField] private GameObject winLoseScreen;


    // Use this for initialization

    
    public bool inhouse;
    //public GameObject Loby;
    //public int finishCheck = 0;
    public float lookuptime;
    public float waitInhouse;
    public float waitInlobay;
    private Transform house;
    //private Vector3 position;
    //private bool stayinRoom;
    public bool finishInspection;


    //AI move
    // Use this for initialization
    public GameObject mainPoint;
    private Rigidbody rb;
    private NavMeshAgent agent;
    private Vector3 target;
    private float limit;
    private int currentRoom = 0;


    //shuffle
    private GameObject[] possibleRooms;
    //private GameObject temp;
    void Start () {
        //initial
        mainPoint = GameObject.FindGameObjectsWithTag("mainPoint")[0];


        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();
        target = mainPoint.transform.position;
        limit = 1;


        possibleRooms = GameObject.FindGameObjectsWithTag("House");
        for (int i=0; i < possibleRooms.Length;i++) {
            //print(possibleRooms[i]);
        }
        Shuffle();
        StartCoroutine(firstRoom(waitInlobay));

	}
	
	// Update is called once per frame
	void Update () {
        move();
        //check to see if NPC can see tentacle in cone of vision
        /*
        if (inhouse) {
            if (house.childCount > 0)
            {
                //print("lookup called" + rand);
                StartCoroutine(firstlookup(lookuptime));
            }
            //inhouse = false;
        }
		*/
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "House" && house == null)
        {
            //print("Im in house!!!");
            //inhouse = true;
            house = other.transform;
            //print("lookup called" + rand);
            StartCoroutine(firstlookup(lookuptime));
        }
    }
    private void OnTriggerExit(Collider other)
    {
        inhouse = false;
        house = null;
    }

    private IEnumerator firstRoom(float time) {
        yield return new WaitForSeconds(time);
        NextRoom();
    }


    IEnumerator firstlookup(float time)
    {
        yield return new WaitForSeconds(time);
        int count = Random.Range(0, house.childCount);
        //print(count);
        int rand = Random.Range(2,6);
        StartCoroutine(inspection(count, rand));
    }

    IEnumerator inspection(int count, float time)
    {
        //check spawer;
        //print(house.childCount);
        if (house.childCount > 0 ) {
            //print(house.childCount);
            for (int i = 0; i <= count; i++)
            {
                //print("scared-1");
                //check portal;
                //print("scared1");
                if (house.GetChild(i).childCount > 0) {
                    Vector3 look = new Vector3(house.GetChild(i).transform.position.x,transform.position.y, house.GetChild(i).transform.position.z);
                    transform.LookAt(look);
                    yield return new WaitForSeconds(time);
                    //check tentacle;
                    //print("scared2");
                   // if (house.GetChild(i).GetChild(i).childCount > 0 ) {
                    //    for (int j =0; j <  house.GetChild(i).GetChild(i).childCount; j++) {
                   //         if (house.GetChild(i).GetChild(i).GetChild(j).tag == "Tentacle") {
                   //             gameObject.GetComponent<AI>().scare = true;
                   //         }

                   //     }
                       // print("scared");
                   // }

                }
            }
        }
        //print("inspection...");
        NextRoom();
    }

    private void NextRoom()
    {
        if (currentRoom < possibleRooms.Length)
        {
            //print("call twitce");
            target = possibleRooms[currentRoom].transform.position;
            currentRoom++;
        }
        else if(!gameObject.GetComponent<AI>().scare){
            finishInspection = true;
        }
    }

    public void setLocation(Vector3 newLocation)
    {
        target = newLocation;
    }
    public void setLimit(float newLimit)
    {
        limit = newLimit;
    }

    private void move()
    {
        if (Mathf.Abs(transform.position.x - target.x) >= limit || Mathf.Abs(transform.position.z - target.z) >= limit)
        {
            //print(Mathf.Abs(transform.position.x - target.x));
            agent.SetDestination(target);
        }
        //print();
        //agent.SetDestination(target);
        //agent.SetDestination(location);
    }

    public void Shuffle()
    {
        for (int i = 0; i < possibleRooms.Length; i++)
        {
            int rnd = Random.Range(0, possibleRooms.Length);
            GameObject temp = possibleRooms[rnd];
            possibleRooms[rnd] = possibleRooms[i];
            possibleRooms[i] = temp;
        }
    }

    /*
    IEnumerator lookup(int count,float time)
    {
        //print("lookup called");
        //look at monster
        position =  house.GetChild(count).position;
        transform.LookAt(new Vector3(position.x,transform.position.y,position.z));
        for (int i =0; i < house.GetChild(count).childCount; i++) {
            print(house.GetChild(count).GetChild(i).tag);
            if (house.GetChild(count).GetChild(i).tag == "Tentacle" && house.GetChild(count).GetChild(i).GetComponent<Tentacle>().alive == true) {
                transform.GetComponent<AI>().scare = true;
                FindObjectOfType<AudioManagement>().Stop("Theme");
                FindObjectOfType<AudioManagement>().Play("Defeat");
            }
        }
        yield return new WaitForSeconds(time);
        if (count > 0)
        {
            float rand = Random.Range(0, lookuptime);
            StartCoroutine(lookup(count - 1, rand));
        }
        else if(transform.GetComponent<AI>().scare == false)
        {
            print("lookup called");
            finishCheck += 1;
        }
    }
    */
}
