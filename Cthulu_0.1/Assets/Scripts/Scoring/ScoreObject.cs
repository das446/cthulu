using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreObject : MonoBehaviour
{
    [SerializeField]
    private int value;

    // private bool isMoved;

    // Use this for initialization
    void Start()
    {
        // isMoved = false;
    }

    public void hasMoved()
    {
        // if (isMoved == false)
        // {
        //     isMoved = true;
            ScoringController.Instance().updateMarketValue(value);
        // }
    }
}
