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
            isShowing = !isShowing;
            menu.SetActive(isShowing);
            Cursor.lockState = CursorLockMode.None;
        }
        else if(Input.GetKeyDown("escape") && isShowing == true)
        {
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
}