using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EndScreen : MonoBehaviour {
    public void Restart() {
        Player.LoadLevel(PlayerPrefs.GetString("lvl"));
    }
    public void Quit() {
        Application.Quit();
    }
}