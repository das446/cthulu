using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Only the server controls the timer, it sends the time to the clients timers 
/// </summary>
public class Timer : MonoBehaviour {

    public float timeLeft = 360;

    public Text timerText;

    public bool paused = false;

    ///<summary>Does it make more sense for it to be time elapsed or time remaining?</summary>
    /// <param name="minutes">minutes left</param>
    /// <param name="seconds">seconds left</param>
    public delegate void OnTimeAlert(int minutes, int seconds);

    /// <summary>
    /// Subscribe to this event to have a function occur at a certain time
    /// </summary>
    public static event OnTimeAlert TimeLeftAlert;

    int prevMin;
    int prevSec;

    public void Start() { }

    public void PlayWarning() { }

    void Update() {
        if (paused) { return; }
        Debug.Log("Tick");
        timeLeft = timeLeft - Time.deltaTime;

        UpdateTimer(timeLeft);
    }

    void UpdateTimer(float time) {

        int seconds = (int) time % 60;
        int minutes = (int) time / 60;

        UpdateDisplay(minutes, seconds);

        if (prevMin == minutes && prevSec == seconds) {
            //because time is a float that's updated every frame it needs to store the previous int val
            //to prevent the event from being called multiple times per second
        } else {
            if (TimeLeftAlert != null) {
                TimeLeftAlert(minutes, seconds);
            }
            prevMin = minutes;
            prevSec = seconds;
        }

    }

    private void UpdateDisplay(int minutes, int seconds) {
        string s = seconds >= 10 ? seconds + "" : "0" + seconds;
        string m = minutes >= 10 ? minutes + "" : "0" + minutes;

        timerText.text = minutes + ":" + s;
    }
}