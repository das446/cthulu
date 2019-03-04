using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pauser : MonoBehaviour
{
    bool paused = false;
    [SerializeField] GameObject menu;
    public GameObject cam;

    public Text logText;
    public GameObject logPanel;

    public SubtitleController subs;

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.P)){
            paused = !paused;

            if(paused){
                Pause();
            }
            else{
                UnPause();
            }

        }
    }

    private void UnPause()
    {
        Time.timeScale = 1;
        Player.singleton.Unlock();
        logPanel.gameObject.SetActive(false);
    }

    private void Pause()
    {
        Time.timeScale = 0;
        Player.singleton.Lock();
        logPanel.gameObject.SetActive(true);
        logText.text = subs.PrintLog();
    }
}
