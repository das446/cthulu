using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour {

    public float speed;
    public Rigidbody rb;

    // Use this for initialization
    private float vertical;
    private float horizontal;
    public Camera cam;
    void Start () {
        rb = GetComponent<Rigidbody>();
    }   
	
	// Update is called once per frame
	void FixedUpdate () {

        //vertical = Input.GetAxis("Vertical");
        //horizontal = Input.GetAxis("Horizontal");
        //Debug.Log(vertical);
        /*
        rb.velocity = (transform.forward * vertical) * speed * Time.fixedDeltaTime;
        rb.velocity = (transform.right * horizontal) * speed * Time.fixedDeltaTime;
        */
        float mouseX = (Input.mousePosition.x / Screen.width) - 0.5f;
        float mouseY = (Input.mousePosition.y / Screen.height) - 0.5f;
        transform.rotation = Quaternion.Euler(new Vector4(-1f , mouseX * 360f, transform.rotation.z));
        cam.transform.localRotation = Quaternion.Euler(new Vector4(-1f * (mouseY * 180f),0f, transform.localRotation.z));



        /* move objects */
        //vertical = Input.GetAxis("Vertical");
        horizontal = Input.GetAxis("Horizontal");
        if (Input.GetKey(KeyCode.W))
        {
            rb.AddForce((transform.forward * 1f) * speed );
        }
        if (Input.GetKey(KeyCode.S))
        {
            rb.AddForce((transform.forward * -1f) * speed);
        }
        if (Input.GetKey(KeyCode.A))
        {
            rb.AddForce((transform.right * -1f) * speed);
        }
        if (Input.GetKey(KeyCode.D))
        {
            rb.AddForce((transform.right * 1f) * speed);
        }

    }
}
