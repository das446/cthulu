using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

public class LevelSelect : MonoBehaviour {

    Button button;
    VerticalLayoutGroup layoutGroup;

    void Start() {
        List<string> files = GetFiles();
        MakeButtons(files);
    }

    List<string> GetFiles() {
        return Directory.GetFiles(Application.streamingAssetsPath + "/Events/").Where(x => x.EndsWith(".txt")).ToList();
    }

    void MakeButtons(List<string> files) {
        for (int i = 0; i < files.Count; i++) {
            Button b = Instantiate(button, layoutGroup.transform);
            //b.onClick += { x => { } }
        }
    }
}