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

	// Use this for initialization
	void Start () 
	{
		isLocked = false;
		isOpen = false;
	}

	public void open()
	{
		// doorsInSet[0].transform.rotation = Quaternion.Euler(0, 90, 0);
		// doorsInSet[1].transform.rotation = Quaternion.Euler(0, -90, 0);
		doorsInSet[0].transform.Rotate(Vector3.up, 90, Space.World);
		doorsInSet[1].transform.Rotate(Vector3.up, -90, Space.World);
		isOpen = true;
	}

	public void close()
	{
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
