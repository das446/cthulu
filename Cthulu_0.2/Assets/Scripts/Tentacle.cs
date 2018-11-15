using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tentacle : MonoBehaviour {
    public GameObject[] tentacleArray;

    // Use this for initialization
    void Start () {
        tentacleArray = GameObject.FindGameObjectsWithTag("Tentacle");
        Debug.Log(GameObject.FindGameObjectsWithTag("Tentacle").Length);
        for (int tentacleNumber = 0; tentacleNumber < GameObject.FindGameObjectsWithTag("Tentacle").Length; tentacleNumber++)
        {
            tentacleArray[tentacleNumber].SetActive(false);
        }
        tentacleArray[1].SetActive(true);
    }
   

    // Update is called once per frame
    void Update () {
		
	}
    /*
    private void OnTriggerEnter(Collider other)
    {
        print(other.tag);
        if (other.tag == "pickable" || other.tag == "hider") {
            Destroy(gameObject);
        }
    }
    */
    /*
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "pickable" || other.tag == "hider")
        {
            Destroy(gameObject);
        }
    }
    */
}
