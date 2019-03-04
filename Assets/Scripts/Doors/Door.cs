using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class Door : Interactable, IManageable {
	[SerializeField]
	private GameObject[] doorsInSet;

	private bool isLocked = false;

	[SerializeField]
	private bool isOpen;
	private AudioSource source;

	public GameObject obj => gameObject;
	Vector3 pos;
	Vector3 rot;

	// Use this for initialization
	void Awake() {
		this.AddToManager();
		rot = transform.eulerAngles;
	}

	public void Open() {
		GameManager.When(name, "open");
		gameObject.PlaySound("DoorOpening");
		transform.Rotate(0, 90, 0);
		isOpen = true;
	}

	public void Close() {
		gameObject.PlaySound("DoorClosing");
		transform.eulerAngles = rot;
		isOpen = false;
	}

	public override void Interact(Player p) {
		if (isOpen) {
			Close();
		} else {
			Open();
		}
	}

	public void Do(DoEvent de) {
		string param = de.action;
		if (param == "open") {
			Open();
		} else if (param == "close") {
			Close();
		}
	}
}