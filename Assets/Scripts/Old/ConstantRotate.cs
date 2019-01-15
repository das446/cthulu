using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConstantRotate : MonoBehaviour {

	enum Axis {
		X,
		Y,
		Z
	}

	[SerializeField] Axis axis;
	[SerializeField] float speed;

	// Update is called once per frame
	void Update() {
		if (axis == Axis.X) {
			gameObject.transform.Rotate(Vector3.right * Time.deltaTime * speed, Space.Self);
		} else if (axis == Axis.Y) {
			gameObject.transform.Rotate(Vector3.up * Time.deltaTime * speed, Space.Self);
		} else if (axis == Axis.Z) {
			gameObject.transform.Rotate(Vector3.forward * Time.deltaTime * speed, Space.Self);
		}
	}
}