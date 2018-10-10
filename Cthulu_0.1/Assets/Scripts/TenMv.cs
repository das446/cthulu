using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TenMv : MonoBehaviour {

    public float speed;
    bool move = true;
    Rigidbody rb;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
        if (move) {
            rb.AddForce(transform.forward * speed);
        }
        

	}


    private void OnTriggerEnter(Collider other)
    {
        print(other.tag);
        if (other.tag == "Wall") {
            speed = speed * -1f;
        }
        if (other.tag == "Hider") {
            move = false;
        }

    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Hider") {
            move = true;

        }
    }
}
