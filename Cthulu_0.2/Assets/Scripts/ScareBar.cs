using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class ScareBar : MonoBehaviour {

    // Update is called once per frame
    public Text text;
    
	void Update () {
        if (transform.root.GetComponent<AI>().scare == true)
        {
            text.gameObject.SetActive(true);
            transform.rotation = Camera.main.transform.rotation;
        }
        else {
            text.gameObject.SetActive(false);
        }
	}
}
