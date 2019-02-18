using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Compass : MonoBehaviour {

    public GameObject target;
    public GameObject player;
    public RectTransform t;
    public float offset = 90;
    static Compass singleton;

    // Start is called before the first frame update
    void Start() {
        singleton = this;
    }

    public static void UpdateTarget(GameObject g) {
        singleton.target = g;
    }

    // Update is called once per frame
    void Update() {
        if (target != null) {
            UpdateCompass(player.transform, target.transform.position);
        }
    }

    void UpdateCompass(Transform player, Vector3 target) {
        Vector3 forward = player.forward;
        Vector3 targetDir = target - player.position;
        float angle = AngleBetweenVectors(forward, targetDir);
        t.eulerAngles = new Vector3(0, 0, angle);
    }

    // taken from reddit.com/r/Unity3D/comments/aruqz9/if_vector3angle_is_too_imprecise_or_jittery_at
    float AngleBetweenVectors(Vector3 v1, Vector3 v2) {
        // provides a cleaner result at low angles than Vector3.Angle()
        var cross = Vector3.Cross(v1, v2);
        var dot = Vector3.Dot(v1, v2);
        var angle = Mathf.Atan2(cross.magnitude, dot);
        var test = Vector3.Dot(Vector3.down, cross);
        if (test < 0.0) angle = -angle;
        return angle * Mathf.Rad2Deg;
    }

}