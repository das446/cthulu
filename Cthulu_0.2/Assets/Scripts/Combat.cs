using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Combat : MonoBehaviour {

    public float health;
    public float damage;


    private bool callOnce = true;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (health <= 0 && transform.root.tag != "Player" && transform.tag != "moveable" && transform.tag != "pickable")
        {
            //print(transform.root.tag);
            transform.root.gameObject.SetActive(false);
        }
        else if(health <=0 ){

            transform.gameObject.SetActive(false);
        }


	}
    public float attack()
    {

        return damage;

    }
    private void OnTriggerExit(Collider other)
    {

        callOnce = true;
    }
    private void OnTriggerEnter(Collider other)
    {

        if (other.GetComponent<Combat>() != null && callOnce == true &&(
            ((gameObject.tag == "pickable" || gameObject.tag == "moveable") && (other.tag != "pickable"  || other.tag != "moveable")) ||
            (gameObject.tag != "pickable" || gameObject.tag != "moveable")))
        {
            callOnce = false;
            health -= other.GetComponent<Combat>().attack();
        }

    }

}
