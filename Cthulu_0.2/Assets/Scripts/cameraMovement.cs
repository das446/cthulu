using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cameraMovement : MonoBehaviour
{

    private float yaw;
    private float pitchCheck;
    private float pitch;

    private float horizontalSensitivity;
    private float verticalSensitivity;

    private float mouseYChange;

    private Camera playerCam;

    public float getCameraHorAxis()
    {
        return yaw;
    }

    // Use this for initialization
    void Start()
    {

        playerCam = GetComponent<Camera>();
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.Locked;

        horizontalSensitivity = 2f;
        verticalSensitivity = 2f;
    }

    // Update is called once per frame
    void Update()
    {

        yaw += horizontalSensitivity * Input.GetAxisRaw("Mouse X");
        pitch -= verticalSensitivity * Input.GetAxisRaw("Mouse Y");

        if (Mathf.Abs(pitch) < 90)
        {
            playerCam.transform.eulerAngles = new Vector3(pitch, yaw, 0.0f);
        }
        if (pitch >= 90)
        {
            pitch = 90;
        }
        else if (pitch <= -90)
        {
            pitch = -90;
        }
        pitch = pitch % 360;
        yaw = yaw % 360;


    }
}