using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoringController : MonoBehaviour
{
    [SerializeField]
    private int marketValue = 900000;

    public Text valueNum;

    private static ScoringController instance;

    public static ScoringController Instance()
    {
        return instance;
    }

    void Awake()
    {
        instance = this;
    }

    // Use this for initialization
    void Start()
    {
        valueNum.text = "$" + marketValue;
    }

    //updates score
    public void updateMarketValue(int valueChange)
    {
        marketValue += valueChange;
        valueNum.text = "$" + marketValue;
    }
}
