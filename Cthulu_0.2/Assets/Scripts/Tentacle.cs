using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tentacle : MonoBehaviour {

    public bool alive;
    // Use this for initialization
	void Start () {
        alive = true;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "pickable" || other.tag == "hider") {
            alive = false;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "pickable" || other.tag == "hider")
        {
            alive = true;
            print("Alive");
        }
    }
}
