using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BigScoreObject : ScoreObject
{
	private Vector3 prevPos;

	// Use this for initialization
	void Start () 
	{
		prevPos = this.transform.position;
	}
	
	// Update is called once per frame
	void Update () 
	{
		//if((this.transform.position - prevPos).magnitude >= 3)
		if(this.transform.position != prevPos)
		{
			hasMoved();
			prevPos = this.transform.position;
		}
	}
}
