using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawer : MonoBehaviour {

    // Use this for initialization
    public Vector3 offset;
    public GameObject Portal;
    void Start()
    {
        float rnd = Random.Range(5f, 11f);
        if (Portal != null) {
            StartCoroutine(respaw(rnd));
        }
    }
    IEnumerator respaw(float time)
    {
        yield return new WaitForSeconds(time);
        GameObject tmp = Instantiate(Portal, gameObject.transform.position + offset, gameObject.transform.rotation);
        tmp.transform.parent = transform;

    }

}
