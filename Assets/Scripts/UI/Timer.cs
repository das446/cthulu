using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Only the server controls the timer, it sends the time to the clients timers 
/// </summary>
public class Timer : MonoBehaviour, IManageable {


    public float timeLeft = 360;
    public float anxietyTime = 90;
    public float startTime;

    public Text timerText;

    public GameObject clockHand;

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

    public GameObject obj => gameObject;

    void Awake(){
        this.AddToManager();
    }

    public void Start() {
        startTime = timeLeft;
    }

    public void PlayWarning() { }

    void Update() {
        if (paused) { return; }
        timeLeft = timeLeft - Time.deltaTime;

        UpdateTimer(timeLeft);

        if(timeLeft <= anxietyTime)
        {
            Music.ChangeSong("Anxiety");
        }
        if(timeLeft<=0){
            Music.ChangeSong("LoseSong");
            Player.singleton.LoseLevel();
        }
    }

    void UpdateTimer(float time) {

        int seconds = (int) time % 60;
        int minutes = (int) time / 60;

        UpdateDisplay(time);

        if (prevMin == minutes && prevSec == seconds) {
            //because time is a float that's updated every frame it needs to store the previous int val
            //to prevent the event from being called multiple times per second
        } else {

            if (TimeLeftAlert != null) {
                TimeLeftAlert(minutes, seconds);
            }
            prevMin = minutes;
            prevSec = seconds;
            int t = (int) TimeElapsed();
            GameManager.When("time", t.ToString());
        }

    }

    void UpdateDisplay(float t) {
        float elapsed = 360f * startTime / timeLeft;
        clockHand.transform.eulerAngles = new Vector3(0, 0, -elapsed);
    }

    float TimeElapsed() {
        return startTime - timeLeft;
    }

    public void Do(DoEvent de)
    {
        if(de.action=="set"){
            timeLeft = Int32.Parse(de.args[0]);
        }
    }
}