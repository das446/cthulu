using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using Cthulu;
using UnityEngine;
using UnityEngine.UI;

public class ButtonLines : MonoBehaviour {

    public string placeName;

    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {
        PushToTalk();
    }

    public void PushToTalk() {
        if (placeName == "Kitchen") {
            Audio.PlaySound("KitchenHost");
        } else if (placeName == "Bathroom") {
            Audio.PlaySound("FamilyHost");
        } else if (placeName == "Accept") {
            Audio.PlaySound("ThankYou");

        };
    }
}