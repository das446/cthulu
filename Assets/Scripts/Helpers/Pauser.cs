using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Pauser : MonoBehaviour {
    bool paused = false;
    [SerializeField] GameObject menu;
    public GameObject cam;

    public static event Action OnPause;
    public static event Action OnUnPause;

    // Update is called once per frame
    void Update() {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            paused = !paused;

            if (paused) {
                Pause();
            } else {
                UnPause();
            }

        }
    }

    public void UnPause() {
        Time.timeScale = 1;
        Player.singleton.Unlock();
        menu.SetActive(false);
        OnUnPause();
    }

    private void Pause() {
        Time.timeScale = 0;
        Player.singleton.Lock();
        menu.SetActive(true);
        OnPause();
    }

    public void GoMain(){
        SceneManager.LoadScene("StartMenu");
        Player.ResetStatics();
    }
}