using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pauser : MonoBehaviour
{
    bool paused = false;
    [SerializeField] GameObject menu;
    public GameObject cam;

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
        cam.SetActive(false);
    }

    private void Pause()
    {
        Time.timeScale = 0;
        Player.singleton.Lock();
        cam.SetActive(true);
    }
}
