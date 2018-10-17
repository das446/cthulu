using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class moveToRoom : MonoBehaviour {

    // Use this for initialization
    public bool move = false;
    public GameObject mainPoint;
    private float MoveSpeed;
    private Rigidbody rb;
    void Start () {
        MoveSpeed = transform.GetComponent<AI>().MoveSpeed;
        rb = GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {
        if (move)
        {
            transform.LookAt(new Vector3(mainPoint.transform.position.x, transform.position.y, mainPoint.transform.position.z));
            rb.AddForce((transform.forward) * MoveSpeed);
            if (Mathf.Abs(transform.position.x - mainPoint.transform.position.x) < 5 && Mathf.Abs(transform.position.z - mainPoint.transform.position.z) < 5)
            {
                move = false;
            }
        }
    }
}
