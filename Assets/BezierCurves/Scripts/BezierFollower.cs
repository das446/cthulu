using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BezierFollower : MonoBehaviour {
    [SerializeField] BezierCurve curve;
    [SerializeField] float speed = 1;
    float t = 0;

    // Update is called once per frame
    void Update() {
        t += Time.deltaTime * speed;
        if (t > 1) {
            t = 0;
        }
        transform.position = curve.GetPointAt(t);
    }
}