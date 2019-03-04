using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class MenuScript : MonoBehaviour
{
  
    
    public void LoadScene(string scene)
    {
        SceneManager.LoadScene(scene);
    }
    public void Quit()
    {
        Application.Quit();
    }
    public void UnImplemented()
    {

    }
}
