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
        Cursor.visible = false;
    }   
	
	// Update is called once per frame
	void FixedUpdate () {


        float mouseX = (Input.mousePosition.x / Screen.width) - 0.5f;
        float mouseY = (Input.mousePosition.y / Screen.height) - 0.5f;
        transform.rotation = Quaternion.Euler(new Vector4(-1f , mouseX * 360f, transform.rotation.z));
        cam.transform.localRotation = Quaternion.Euler(new Vector4(-1f * (mouseY * 180f),0f, transform.localRotation.z));

        /* move objects */
        vertical = Input.GetAxis("Vertical");
        horizontal = Input.GetAxis("Horizontal");
        rb.AddForce((transform.forward * vertical) * speed );
        rb.AddForce((transform.right * horizontal) * speed);

    }
}
