using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControl : MonoBehaviour {

    public Texture2D aimImg;
    public Texture2D amiImg2;
    public int ImgH;
    public int Imgw;
    public float throwForce;
    public List<GameObject> tentacles = new List<GameObject>();
    public float distence = 4;
    private bool playedRecently = true;
    //private
    private Camera cam;
    private Texture2D currentImg;
    private bool hold;
    public AudioClip portalViewed;
    private AudioSource source;
    void Start () {
        source = GetComponent<AudioSource>();
        cam = Camera.main;
        currentImg = aimImg;
        tentacles = GameObject.FindGameObjectsWithTag("director")[0].GetComponent<RespawnAI>().tentacles;
        StartCoroutine(resetSound()); 
    }
    IEnumerator resetSound()
    {
        yield return new WaitForSeconds(5);
        playedRecently = false;
        StartCoroutine(resetSound());
        yield return null;
    }

        void Update()
    {
        RaycastHit hit1;
        if (Physics.Linecast(tentacles[0].transform.position, this.gameObject.transform.position, out hit1) && tentacles[0].activeInHierarchy)
        {
            Vector3 angle = (tentacles[0].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
                
            }
        }
        else if (Physics.Linecast(tentacles[1].transform.position, transform.position, out hit1) && tentacles[1].activeInHierarchy)
        {
            Vector3 angle = (tentacles[1].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
            }
        }
        else if (Physics.Linecast(tentacles[2].transform.position, this.gameObject.transform.position, out hit1) && tentacles[2].activeInHierarchy)
        {
            Vector3 angle = (tentacles[2].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
            }
        }
        else if (Physics.Linecast(tentacles[3].transform.position, this.gameObject.transform.position, out hit1) && tentacles[3].activeInHierarchy)
        {
            Vector3 angle = (tentacles[0].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
            }
        }
        else if (Physics.Linecast(tentacles[4].transform.position, this.gameObject.transform.position, out hit1) && tentacles[4].activeInHierarchy)
        {
            Vector3 angle = (tentacles[0].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
            }
        }
        else if (Physics.Linecast(tentacles[5].transform.position, this.gameObject.transform.position, out hit1) && tentacles[5].activeInHierarchy)
        {
            Vector3 angle = (tentacles[0].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
            }
        }
        else if (Physics.Linecast(tentacles[6].transform.position, this.gameObject.transform.position, out hit1) && tentacles[6].activeInHierarchy)
        {
            Vector3 angle = (tentacles[6].transform.position - this.gameObject.transform.position).normalized;
            float rangle = Mathf.Abs(Vector3.Angle(this.gameObject.transform.forward, angle) - 20);
            if (rangle <= 5)
            {
                if (!playedRecently)
                {
                    playedRecently = true;
                    source.Play();
                }
            }
        }

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
                    if (hit.transform.GetComponent<Combat>() != null) {
                        hit.transform.GetComponent<Combat>().damage = 1;
                    }
                
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
                    if (hit.transform.GetComponent<Combat>() != null)
                    {
                        hit.transform.GetComponent<Combat>().damage = 1;
                    }
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
    private void OnGUI()
    {
        if (currentImg != null)
        {
            GUI.DrawTexture(new Rect(Screen.width / 2, Screen.height / 2, Imgw, ImgH), currentImg);
        }
        else
        {
            Debug.Log("AIM image is empty!!!!");
        }
    }

}
