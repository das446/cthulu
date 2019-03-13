using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadingScreen : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Invoke("Load",3);
    }

    public void Load(){
        SceneManager.LoadScene("Tutorial");
    }
}
