using UnityEngine;
using System.Collections;

public class setting: MonoBehaviour
{

    public GameObject menu; // Assign in inspector
    private bool isShowing;
    private void Start()
    {
        isShowing = false;
        menu.SetActive(isShowing);
    }
    void Update()
    {
        if (Input.GetKeyDown("escape") && isShowing == false)
        {
            Time.timeScale = 0.0f;
            isShowing = !isShowing;
            menu.SetActive(isShowing);
            Cursor.lockState = CursorLockMode.None;
        }
        else if(Input.GetKeyDown("escape") && isShowing == true)
        {
            Time.timeScale = 1.0f;
            isShowing = !isShowing;
            menu.SetActive(isShowing);
            Cursor.lockState = CursorLockMode.Locked;
        }
    }
    public void NumberOfBuyer(float number)
    {
        GameObject.FindGameObjectsWithTag("BuyerRespawn")[0].GetComponent<RespawnAI>().TotalNumberOfBuyer = (int)number;
    }
    public void Timer(float time)
    {
        GameObject.FindGameObjectsWithTag("Timer")[0].GetComponent<countDown>().timer = time;
    }
    public void ScoreControl(int value)
    {
        if (GameObject.Find("Score Controller").GetComponent<ScoringController>().marketValue > 0 ) { 
            value -= 1000;
            GameObject.Find("Score Controller").GetComponent<ScoringController>().updateMarketValue(value);
        }
    }
    public void ScoreControlInc(int value)
    {
        if (GameObject.Find("Score Controller").GetComponent<ScoringController>().marketValue < 1000000)
        {
            value += 1000;
            GameObject.Find("Score Controller").GetComponent<ScoringController>().updateMarketValue(value);
        }
    }
}