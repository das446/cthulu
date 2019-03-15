using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cthulu;

public class RandomPainting : MonoBehaviour {

    [SerializeField] GameObject midFrame, tallFrame, wideFrame;
    [SerializeField] GameObject[] paintings;

    void Start() {
        Debug.Log("RandomPaintitng");
        paintings.RandomItem().SetActive(true);
    }

}