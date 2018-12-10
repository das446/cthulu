using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class HP : MonoBehaviour {

    // Use this for initialization
    public Text text;
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.rotation = Camera.main.transform.rotation;
        if (transform.parent.GetComponent<Combat>() != null)
        {
            text.text = transform.parent.GetComponent<Combat>().health.ToString();
        }
        else {
            text.text = transform.parent.GetComponent<CombatPortal>().health.ToString();
        }
    }
}
