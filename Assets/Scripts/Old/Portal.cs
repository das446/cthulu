using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Portal : MonoBehaviour {

    // Use this for initialization
    public Vector3 offset;
    public GameObject monster;
    public bool spawn = false;
    public float rnd;

    void Start () {
        rnd = Random.Range(5f, 11f);
        if (monster != null)
        {
            StartCoroutine(respaw(rnd));
        }
    }
    IEnumerator respaw(float time) {
        yield return new WaitForSeconds(time);
        /*
        GameObject tmp = Instantiate(monster,gameObject.transform.position + offset,gameObject.transform.rotation);
        tmp.transform.parent = transform;
        */
        spawn = true;

    }

	// Update is called once per frame
	void Update () {
        if (spawn) {
            if (spawn && IfNoTentacle()) {
                GameObject tmp = Instantiate(monster, gameObject.transform.position + offset, gameObject.transform.rotation);
                tmp.transform.parent = transform;
                spawn = false;
            }

        }
	}

    bool IfNoTentacle() {
        for (int i = 0; i < gameObject.transform.childCount; i++)
        {
            if (gameObject.transform.GetChild(i).tag == "Tentacle")
            {
                return false;
            }
        }
        return true;
    }

    private void OnTriggerStay(Collider other)
    {
        print("trigerd");
        if (other.tag == "pickable" || other.tag == "hider")
        {
            //Destroy(gameObject);
            spawn = false;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "pickable" || other.tag == "hider")
        {
            //Destroy(gameObject);
            //spawn = true;
            StartCoroutine(respaw(rnd));
        }
    }
}
