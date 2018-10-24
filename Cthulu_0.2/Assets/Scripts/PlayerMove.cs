using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour {

    public float speed;
    //public float lookspeed;
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
        //print(Quaternion.Euler(new Vector4(-1f, 0f, transform.rotation.z)).y);
        /* move objects */
        //transform.LookAt(Input.mousePosition);
        vertical = Input.GetAxis("Vertical");
        horizontal = Input.GetAxis("Horizontal");
        rb.AddForce((transform.forward * vertical) * speed );
        rb.AddForce((transform.right * horizontal) * speed);
        //lookat();

    }
    /*
    private void lookat() {


        Plane playerPlane = new Plane(Vector3.up, transform.position);

        // Generate a ray from the cursor position
        Ray ray = cam.ScreenPointToRay(Input.mousePosition);

        // Determine the point where the cursor ray intersects the plane.
        // This will be the point that the object must look towards to be looking at the mouse.
        // Raycasting to a Plane object only gives us a distance, so we'll have to take the distance,
        //   then find the point along that ray that meets that distance.  This will be the point
        //   to look at.
        float hitdist = 0.0f;
        // If the ray is parallel to the plane, Raycast will return false.
        if (playerPlane.Raycast(ray, out hitdist))
        {
            // Get the point along the ray that hits the calculated distance.
            Vector3 targetPoint = ray.GetPoint(hitdist);

            // Determine the target rotation.  This is the rotation if the transform looks at the target point.
            Quaternion targetRotation = Quaternion.LookRotation(targetPoint - transform.position);

            // Smoothly rotate towards the target point.
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, lookspeed * Time.deltaTime);
        }


    }
    */
}
