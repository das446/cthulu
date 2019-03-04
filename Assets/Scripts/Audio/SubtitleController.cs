using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SubtitleController : MonoBehaviour, IManageable {
    public List<Subtitle> subtitles;
    public TMPro.TextMeshProUGUI text;
    string folder;

    public GameObject obj => gameObject;

    AudioSource _source;

    public List<string> log;

    void Awake() {
        if (subtitles.Count == 0) {
            LoadSubtitles();
        }
        this.AddToManager();
        _source = GetComponent<AudioSource>();
    }

    public void Play(string sound, string caller = "") {
        Subtitle sub;
        sound = sound.ToLower();
        try {
            sub = subtitles.Where(x => x.name.ToLower() == sound).First();
        } catch {
            Debug.LogError("No subtitle named " + sound);
            return;
        }
        _source.Stop();
        _source.PlayOneShot(sub.audio);
        string t = sub.text;
        if (caller != "") {
            t = caller + ": " + t;
        }
        text.text = t;
        log.Add(t);
        this.StopAllCoroutines();
        this.DoAfterTime(() => text.text = "", sub.audio.length + 1);

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

    public string PrintLog() {
        string s = "";
        for (int i = 0; i < log.Count; i++) {
            s += log[i] + "\n"+"----------------------------------------------------------"+"\n";
        }
        return s;
    }

}