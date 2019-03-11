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

    public float maxTime = 360;
    public float anxietyTime = 90;
    public float elapsedTime;

    public Text timerText;

    public GameObject clockHand;

    public bool paused = false;

    public Image mask;

    ///<summary>Does it make more sense for it to be time elapsed or time remaining?</summary>
    /// <param name="minutes">minutes left</param>
    /// <param name="seconds">seconds left</param>
    public delegate void OnTimeAlert(int minutes, int seconds);

    /// <summary>
    /// Subscribe to this event to have a function occur at a certain time
    /// </summary>
    public static event OnTimeAlert TimeAlert;

    int prevMin;
    int prevSec;

    public GameObject obj => gameObject;

    void Awake() {
        this.AddToManager();
    }

    public void Start() {
        elapsedTime = 0;
    }

    public void PlayWarning() { }

    void Update() {
        if (paused) { return; }
        elapsedTime = elapsedTime + Time.deltaTime;

        UpdateTimer(elapsedTime);

        if (elapsedTime >= anxietyTime) {
            Music.ChangeSong("Anxiety");
        }
        if (elapsedTime >= maxTime) {
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

            if (TimeAlert != null) {
                TimeAlert(minutes, seconds);
            }
            prevMin = minutes;
            prevSec = seconds;
            int t = (int) elapsedTime;
            GameManager.When("time", t.ToString());
        }

    }

    void UpdateDisplay(float t) {
        float percent = elapsedTime / maxTime;
        mask.fillAmount = percent;
    }

    public void Do(DoEvent de) {
        if (de.action == "set") {
            maxTime = Int32.Parse(de.args[0]);
        }
    }
}