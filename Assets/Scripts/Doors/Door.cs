using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour 
{
	[SerializeField]
	private GameObject[] doorsInSet;

	private bool isLocked;

	[SerializeField]
	private bool isOpen;
    private AudioSource source;

    // Use this for initialization
    void Start () 
	{
        source = GetComponent<AudioSource>();
		isLocked = false;
		isOpen = true;
        doorsInSet[0].transform.Rotate(Vector3.up, 90, Space.World);
        doorsInSet[1].transform.Rotate(Vector3.up, -90, Space.World);
    }

	public void open()
	{
        source.Play();
		// doorsInSet[0].transform.rotation = Quaternion.Euler(0, 90, 0);
		// doorsInSet[1].transform.rotation = Quaternion.Euler(0, -90, 0);
		doorsInSet[0].transform.Rotate(Vector3.up, 90, Space.World);
		doorsInSet[1].transform.Rotate(Vector3.up, -90, Space.World);
		isOpen = true;
	}

	public void close()
	{
        source.Play();
        // doorsInSet[0].transform.rotation = Quaternion.Euler(0, 0, 0);
        // doorsInSet[1].transform.rotation = Quaternion.Euler(0, 0, 0);
        doorsInSet[0].transform.Rotate(Vector3.up, -90, Space.World);
		doorsInSet[1].transform.Rotate(Vector3.up, 90, Space.World);
		isOpen = false;
	}

	public void lockDoor()
	{
		isLocked = !isLocked;
	}

	public bool checkLock()
	{
		return isLocked;
	}

	public bool checkOpen()
	{
		return isOpen;
	}
}
