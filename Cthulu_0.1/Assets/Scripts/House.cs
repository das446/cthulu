using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class House : MonoBehaviour {

    // Use this for initialization
    private bool inhouse;
    private int rand;
    public int finishCheck = 0;
    private Transform house;
    private Vector3 position;
    public float lookuptime;
    private GameObject[] gb_list;
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        
        if (inhouse) {
            rand = Random.Range(0,house.childCount);
            print("lookup called" + rand);
            StartCoroutine(firstlookup(rand,lookuptime));
            inhouse = false;
        }

		
	}
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "House") {
            print("Im in house!!!");
            inhouse = true;
            house = other.transform;
        }
    }

    IEnumerator firstlookup(int count, float time) {
        yield return new WaitForSeconds(time);
        StartCoroutine(lookup(count, rand));

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
            }
        }
        yield return new WaitForSeconds(time);
        if (count > 0)
        {
            float rand = Random.Range(0, lookuptime);
            StartCoroutine(lookup(count - 1, rand));
        }
        else {
            finishCheck += 1;
        }
    }
}
