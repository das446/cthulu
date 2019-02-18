using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu {
	public class TextMeshFaceCamera : MonoBehaviour {

		void Update() {
			if(Camera.main==null){return;}
			float y = Camera.main.transform.eulerAngles.y;
			Vector3 a = transform.eulerAngles;
			a.y = y;
			transform.eulerAngles = a;
		}
	}
}