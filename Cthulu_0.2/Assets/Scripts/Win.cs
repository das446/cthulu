using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Win : MonoBehaviour {

    // Use this for initialization
    private bool once = false;
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if(GameObject.FindGameObjectsWithTag("AI").Length <= 0 && once == false) {
            // add lose state;
            print("lose");
            once = true;
        } else if (GameObject.FindGameObjectsWithTag("AI").Length > 0 && GameObject.FindGameObjectsWithTag("House").Length == GameObject.FindGameObjectsWithTag("AI")[0].GetComponent<House>().finishCheck && once == false) {
            // add win state;
            print("win");
            once = true;
        }
	}
}
