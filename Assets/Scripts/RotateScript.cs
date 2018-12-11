using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateScript : MonoBehaviour {


	
	// Update is called once per frame
	void Update ()
    {
        this.gameObject.transform.Rotate(Vector3.left * Time.deltaTime, Space.World);
	}
}
