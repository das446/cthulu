using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MouseOverZoom : MonoBehaviour {

    private Vector3 initScale;
    private Vector3 zoomScale;
    public float zoomFactor = 1.2f;

    // Use this for initialization
    void Start () {
        initScale = transform.localScale;
        zoomScale = zoomFactor * initScale;
	}

    private void Update()
    {
        
    }

    private void OnMouseOver()
    {
        transform.localScale = zoomScale;
    }

    private void OnMouseExit()
    {
        transform.localScale = initScale;
    }
}
