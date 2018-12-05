using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControl : MonoBehaviour {

    public Texture2D aimImg;
    public Texture2D amiImg2;
    public int ImgH;
    public int Imgw;
    public float throwForce;
    public float distence = 4;

    //private
    private Camera cam;
    private Texture2D currentImg;
    private bool hold;
    void Start () {
        cam = Camera.main;
        currentImg = aimImg;
	}

    void Update()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(0.5F, 0.5F, 0));
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
        {
            if (hit.distance <= distence)
            {
                currentImg = amiImg2;
                if (hold == false && hit.transform.tag == "pickable" && Input.GetMouseButtonDown(0))
                {
                    hit.rigidbody.isKinematic = true;
                    hit.transform.parent = cam.transform;
                    hold = true;
                    //hit.transform.GetComponent<ScoreObject>().hasMoved();
                    hit.transform.GetComponent<ScoreObject>().hasMoved();

                }
                else if (hold == true && Input.GetMouseButtonDown(0))
                {
                    hit.rigidbody.isKinematic = false;
                    hit.transform.parent = null;
                    hold = false;

                }
                else if (hold == true && Input.GetMouseButtonDown(1))
                {
                    hit.rigidbody.isKinematic = false;
                    hit.transform.parent = null;
                    hold = false;
                    hit.rigidbody.AddForce(cam.transform.forward * throwForce);
                }
                else if (Input.GetMouseButton(0) && hit.transform.tag == "moveable")
                {
                    //print("moving");
                    if (hit.rigidbody != null)
                    {
                        hit.rigidbody.velocity = GetComponent<Rigidbody>().velocity;
                        hit.transform.GetComponent<ScoreObject>().hasMoved();
                    }
                }
            }
            else {
                currentImg = aimImg;
            }
        }

    }
    //show crossHair in center
    private void OnGUI() {
        if (currentImg != null)
        {
            GUI.DrawTexture(new Rect(Screen.width / 2, Screen.height / 2, Imgw, ImgH), currentImg);
        }
        else {
            Debug.Log("AIM image is empty!!!!");
        }
    }
}
