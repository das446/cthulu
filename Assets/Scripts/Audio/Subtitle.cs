using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName="Audio/Subtitle")]
public class Subtitle : ScriptableObject {
    public string Name;
    [TextArea] public string text;
    public AudioClip audio;

}