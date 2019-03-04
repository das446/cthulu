using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinimapCam : MonoBehaviour {
    [SerializeField] GameObject target;

    void Update() {
        Vector3 v = gameObject.transform.position;
        v.x = target.transform.position.x;
        v.z = target.transform.position.z;
        transform.position = v;
    }

}