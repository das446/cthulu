using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartButton : MonoBehaviour {

    private void OnMouseDown()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("IntroCinematic");
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
            {
                sceneSelector.level = 0;
                UnityEngine.SceneManagement.SceneManager.LoadScene("finalLevel");
            }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            sceneSelector.level = 1;
            UnityEngine.SceneManagement.SceneManager.LoadScene("finalLevel");
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            sceneSelector.level = 2;
            UnityEngine.SceneManagement.SceneManager.LoadScene("finalLevel");
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            sceneSelector.level = 3;
            UnityEngine.SceneManagement.SceneManager.LoadScene("finalLevel");
        }
    }
}
