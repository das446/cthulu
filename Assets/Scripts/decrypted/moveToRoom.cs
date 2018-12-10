using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class moveToRoom : MonoBehaviour {

    // Use this for initialization
    public GameObject mainPoint;
    private Rigidbody rb;
    private NavMeshAgent agent;
    private Vector3 location;
    private float limit;
    void Start () {
        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();
        location = mainPoint.transform.position;
        limit = 1;
    }
	
	// Update is called once per frame
	void Update () {
        /*
        if (move)
        {
            //transform.LookAt(new Vector3(mainPoint.transform.position.x, transform.position.y, mainPoint.transform.position.z));
            //rb.AddForce((transform.forward) * MoveSpeed);
            agent.SetDestination(new Vector3(mainPoint.transform.position.x, transform.position.y, mainPoint.transform.position.z));
            if (Mathf.Abs(transform.position.x - mainPoint.transform.position.x) < 5 && Mathf.Abs(transform.position.z - mainPoint.transform.position.z) < 5)
            {
                move = false;
            }
        }
        */
        move();
    }
    public void setLocation(Vector3 newLocation) {
        location = newLocation;
    }
    public void setLimit(float newLimit) {
        limit = newLimit;
    }

    private void move()
    {
        if (Mathf.Abs(transform.position.x - location.x) > limit && Mathf.Abs(transform.position.z - location.z) > limit)
        {
            agent.SetDestination(location);
        }
        //agent.SetDestination(location);
    }

}
