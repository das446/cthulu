using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using Cthulu;
using UnityEngine;

public class Door : Interactable, IManageable {
	[SerializeField]
	private GameObject[] doorsInSet;

	private bool isLocked;

	[SerializeField]
	private bool isOpen;
	private AudioSource source;

	public GameObject obj => gameObject;

	// Use this for initialization
	void Start() {
		this.SetName();
	}

	public void Open() {
		TriggerWhen("open");
	}

	public void Close() { }

	public void Lock() {
		isLocked = true;
	}

	public void Unlock() {
		isLocked = false;
	}

	public bool IsLocked() {
		return isLocked;
	}

	public bool IsOpen() {
		return isOpen;
	}

	public override void Interact(Player p) {
		throw new System.NotImplementedException();
	}

	public void Set() {
		throw new System.NotImplementedException();
	}

	public string[] ValidArgs() {
		throw new System.NotImplementedException();
	}

	public void Set(GameEvent ge) {
		string param = ge.args[0];
		if (param == "open") {
			Open();
		} else if (param == "close") {
			Close();
		} else if (param == "lock") {
			Lock();
		} else if (param == "unlock") {
			Unlock();
		}
	}

	public void TriggerWhen(string function) {
		GameManager.When(name, function);
	}

}