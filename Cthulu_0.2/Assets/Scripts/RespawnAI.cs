using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnAI : MonoBehaviour {

    public GameObject buyer;
    // Use this for initialization
    public Vector3 offset;
    public int TotalNumberOfBuyer;
    public int time;
	void Start () {
        StartCoroutine(respaw(time));
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    IEnumerator respaw(float time)
    {
        for (int i = 0; i < TotalNumberOfBuyer; i++)
        {
            yield return new WaitForSeconds(time);
            GameObject tmp = Instantiate(buyer, gameObject.transform.position + offset, gameObject.transform.rotation);
            //tmp.transform.parent = transform;
        }

    }
}
