using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pauser : MonoBehaviour
{
    bool paused = false;
    [SerializeField] GameObject menu;

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
        throw new NotImplementedException();
    }

    private void Pause()
    {
        Time.timeScale = 0;
        Player.singleton.Lock();
    }
}
