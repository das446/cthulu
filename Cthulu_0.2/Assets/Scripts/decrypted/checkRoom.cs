using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class checkRoom : MonoBehaviour {

    // Use this for initialization
    private float total;
    private NavMeshAgent agent;
    private int prev;
	void Start () {
        agent = GetComponent<NavMeshAgent>();
        total = GameObject.FindGameObjectsWithTag("roomPoint").Length;
        
	}
    /*	
	// Update is called once per frame
	void Update () {
        if (gameObject.GetComponent<House>().finishCheck < total) {
            if (gameObject.GetComponent<AI>().scare == false && gameObject.GetComponent<House>().inhouse == false)
            {
                prev = gameObject.GetComponent<House>().finishCheck;
                gameObject.GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("roomPoint")[gameObject.GetComponent<House>().finishCheck];
                gameObject.GetComponent<moveToRoom>().move = true;
            }
        }
        if (prev != gameObject.GetComponent<House>().finishCheck)
        {
            print("yea");
            gameObject.GetComponent<moveToRoom>().mainPoint = GameObject.FindGameObjectsWithTag("mainPoint")[0];
            gameObject.GetComponent<moveToRoom>().move = true;
        }
    }
    */
}
