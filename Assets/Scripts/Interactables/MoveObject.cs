using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpObject : MonoBehaviour {

    public Rigidbody rb;

    public int grabDistance;

    bool grabbed;

    Transform phand;
    Vector3 holdpos;
    Quaternion holdrot;

    Transform pPos;

    public bool isHeavy;

    public int throwCoefficent;

    void Start() {
        grabbed = false;
        Vector3 direction = Camera.main.transform.forward;
    }

    public void PickUp(Player p) {
        phand = p.hand.transform;
        pPos = p.transform;

        GrabObject();
    }

    internal void Release(Player p)
    {
        throw new NotImplementedException();
    }

    void FixedUpdate() {
        Debug.Log("Grab State?: " + grabbed.ToString());
        if (grabbed && !isHeavy) {
            holdpos = phand.position;
            holdrot = phand.rotation;
            //rb.AddForceAtPosition(direction,holdpos,ForceMode.Acceleration );
            rb.MovePosition(holdpos);
            rb.MoveRotation(holdrot);
            if (Input.GetKeyDown(KeyCode.E)) {
                DropObject();
            }
            if (Input.GetKeyDown(KeyCode.Space)) {
                ThrowObject();
            }
        }

    }
    //* 
    void Update() {

        if (grabbed && isHeavy) {

            //rb.AddForce(new Vector3(0,-1000,0));
            holdpos = phand.position;
            holdrot = phand.rotation;
            //rb.AddForceAtPosition(direction,holdpos,ForceMode.Acceleration );
            //rb.MovePosition(Vector3.MoveTowards(transform.position,new Vector3(holdpos.x,-1,holdpos.z),throwCoefficent));
            //my_forward.y = 0;
            //transform.position += my_forward.normalized * moveSpeed * Time.deltaTime;

            if ((holdpos - transform.position).x > grabDistance || (holdpos - transform.position).y > grabDistance || (holdpos - transform.position).z > grabDistance) {
                Debug.Log("Max distance from object, object dropped");
                DropObject();
            }

            rb.AddForce((holdpos - transform.position + new Vector3(0, -1, 0)) * throwCoefficent);

            if (Input.GetKeyDown(KeyCode.E)) {
                DropObject();
            }
            if (Input.GetKeyDown(KeyCode.Space)) {
                ThrowObject();
            }
        }

    }
    // */
    void DropObject() {
        Debug.Log("Dropped Object");
        grabbed = false;
        rb.useGravity = true;
    }

    void ThrowObject() {
        Debug.Log("Threw Object");
        grabbed = false;
        rb.useGravity = true;

        rb.AddRelativeForce(new Vector3(0, 0, throwCoefficent), ForceMode.Impulse);
    }

    void GrabObject() {
        grabbed = true;
        rb.useGravity = false;
    }

}