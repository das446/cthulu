using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinimapCam : MonoBehaviour {
    [SerializeField] GameObject target;
    [SerializeField] bool is_rotate;
    [SerializeField] float h1, h2;
    [SerializeField] float py;
    Vector3 rot = new Vector3(90, 0, 180);

    void Start() {
        is_rotate = false;
    }
    void Update() {
        RotateMap(is_rotate);
    }

    private void RotateMap(bool r = false) {
        if (r) {
            gameObject.transform.rotation = Quaternion.Euler(gameObject.transform.rotation.eulerAngles.x, target.transform.rotation.eulerAngles.y, target.transform.rotation.eulerAngles.z);
        } else {
            gameObject.transform.eulerAngles = rot;
        }
        Vector3 v = gameObject.transform.position;
        v.x = target.transform.position.x;
        v.z = target.transform.position.z;

        if (target.transform.position.y > py) {
            v.y = h2;
        } else {
            v.y = h1;
        }

        transform.position = v;
    }
    public void SetRotate(bool r) {
        is_rotate = r;
    }

}