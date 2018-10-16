using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class portal : MonoBehaviour {

    // Use this for initialization
    public Vector3 offset;
    public GameObject monster;
	void Start () {
        float rnd = Random.Range(5f, 11f);
        StartCoroutine(respaw(rnd));
    }
    IEnumerator respaw(float time) {
        yield return new WaitForSeconds(time);
        GameObject tmp = Instantiate(monster,gameObject.transform.position + offset,gameObject.transform.rotation);
        tmp.transform.parent = transform.parent;

    }

	// Update is called once per frame
	void Update () {
		
	}


    private void OnTriggerEnter(Collider other)
    {
        print("trigerd");
        if (other.tag == "pickable" || other.tag == "hider") {
            Destroy(gameObject);
        }
    }

}
