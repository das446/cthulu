using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class House : MonoBehaviour {
	
	[SerializeField] private Text uiTextWinLose;
	[SerializeField] private GameObject winLoseScreen;


    // Use this for initialization
    private bool inhouse;
    private int rand;
    public int finishCheck = 0;
    private Transform house;
    private Vector3 position;
    public float lookuptime;
    private GameObject[] gb_list;
    private bool stayinRoom;
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        
        if (inhouse) {
            if (house.childCount > 0)
            {
                rand = Random.Range(0, house.childCount);
                print("lookup called" + rand);
                StartCoroutine(firstlookup(rand, lookuptime));
            }
            else {
                // when no monster in room
                finishCheck += 1;
            }
            inhouse = false;
        }
		if(transform.GetComponent<AI>().scare == true)
		{
            
            winLoseScreen.SetActive(true);
			uiTextWinLose.text = "YOU LOSE";
			Time.timeScale = 0.0f;


        }

		
	}
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "House" && house == null) {
            print("Im in house!!!");
            inhouse = true;
            stayinRoom = true;
            house = other.transform;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        inhouse = false;
        stayinRoom = false;
        house = null;
    }

    IEnumerator firstlookup(int count, float time) {
        yield return new WaitForSeconds(time);
        if (stayinRoom)
        {
            StartCoroutine(lookup(count, rand));
        }

    }


    IEnumerator lookup(int count,float time)
    {
        print("lookup called");
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
            finishCheck += 1;
        }
    }
}
