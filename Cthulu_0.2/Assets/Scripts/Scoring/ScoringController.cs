using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoringController : MonoBehaviour
{
    public int marketValue = 9000;

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
        valueNum.text = parseCurrentValue();
    }

    //updates score
    public void updateMarketValue(int valueChange)
    {
        marketValue -= valueChange;
        if(marketValue < 0)
            marketValue = 0;
        valueNum.text = parseCurrentValue();
    }

    public string parseCurrentValue()
    {
        string marketString = marketValue.ToString();
        string textValue = string.Copy(marketString);
        textValue = textValue.Insert(textValue.Length-1, " ");
        //Debug.Log(textValue);
        if(marketString.Length >= 2)
        {
            textValue = textValue.Insert(textValue.Length-3, " ");
            //Debug.Log(textValue);
        }
        else
        {
            textValue = textValue.Insert(0, " 0");
            //Debug.Log(textValue);
        }
        if(marketString.Length >= 3)
        {
            textValue = textValue.Insert(textValue.Length-5, " ");
            ///Debug.Log(textValue);
        }
        else
        {
            textValue = textValue.Insert(0, " 0");
            //Debug.Log(textValue);
        }
        if(marketString.Length == 4)
        {
            textValue = textValue.Insert(1, " ");
            //Debug.Log(textValue);
        }
        else
        {
            textValue = textValue.Insert(0, "0 ");
            //Debug.Log(textValue);
        }
        return textValue;
    }
}
