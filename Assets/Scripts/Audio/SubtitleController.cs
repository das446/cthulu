using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SubtitleController : MonoBehaviour, IManageable {
    public List<Subtitle> subtitles;
    public Text text;
    string folder;

    public GameObject obj => gameObject;

    void Start() {
        name = "subtitles";
        if (subtitles.Count == 0) {
            LoadSubtitles();
        }
        this.AddToManager();

    }

    public void Play(string sound, string caller = "") {

        Subtitle sub = subtitles.Where(x => x.name == sound).First();
        Cthulu.Audio.PlaySound(sub.audio);
        string t = sub.text;
        if (caller != null) {
            t = caller + ": " + t;
        }
        text.text = t;
        this.DoAfterTime(() => text.text = "", sub.text.Length);

    }

    public void Do(DoEvent de) {
        if (de.action == "play") {
            Play(de.args[0]);
        }
    }

    public void LoadSubtitles() {
        folder = SceneManager.GetActiveScene().name;
        subtitles = new List<Subtitle>();
        subtitles = Resources.LoadAll<Subtitle>("Subtitles/Default").ToList();
        subtitles.AddRange(Resources.LoadAll<Subtitle>("Subtitles/" + folder));
    }

}