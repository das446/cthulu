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
        float angle = Vector3.SignedAngle(forward, targetDir, Vector3.down);
        t.eulerAngles = new Vector3(0, 0, angle);
    }

}