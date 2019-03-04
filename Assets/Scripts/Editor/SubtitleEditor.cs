using UnityEngine;
using System.Collections;
using UnityEditor;

[CustomEditor(typeof(SubtitleController))]
public class SubtitleEditor : Editor
{
    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();
        
        SubtitleController subs = (SubtitleController)target;
        if(GUILayout.Button("Load Subtitles"))
        {
            subs.LoadSubtitles();
        }
    }
}