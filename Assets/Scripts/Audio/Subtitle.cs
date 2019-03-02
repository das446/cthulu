using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Audio/Subtitle")]
public class Subtitle : ScriptableObject {
    public AudioClip audio;
    [TextArea(15,20)] public string text;
    

}