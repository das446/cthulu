using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class portal : MonoBehaviour {

    // Use this for initialization
    public Vector3 offset;
    public GameObject monster;
    public bool spawn = true;
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
        GameObject tmp = Instantiate(monster,gameObject.transform.position + offset,gameObject.transform.rotation);
        tmp.transform.parent = transform;

    }

	// Update is called once per frame
	void Update () {
        if (spawn) {
            if (gameObject.transform.childCount <=0) {
                StartCoroutine(respaw(rnd));
            }

        }
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

}
