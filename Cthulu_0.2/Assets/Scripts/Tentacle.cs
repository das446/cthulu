using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tentacle : MonoBehaviour {

    // Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    private void OnTriggerEnter(Collider other)
    {
        print(other.tag);
        if (other.tag == "pickable" || other.tag == "hider") {
            Destroy(gameObject);
        }
    }
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
