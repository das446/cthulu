using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Audio;

public class SubtitleController : MonoBehaviour, IManageable {
    public List<Subtitle> subtitles;
    public TMPro.TextMeshProUGUI text;
    string folder;

    public GameObject obj => gameObject;

    AudioSource _source;

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
        this.StopAllCoroutines();
        this.DoAfterTime(() => text.text = "", sub.audio.length+1);

    }

    public void PlaySubOnly(string sound, string caller = "") {
        Subtitle sub;
        try {
            sub = subtitles.Where(x => x.name.ToLower() == sound).First();
        } catch {
            Debug.LogError("No subtitle named " + sound);
            return;
        }
        string t = sub.text;
        if (caller != "") {
            t = caller + ": " + t;
        }
        text.text = t;
        this.StopAllCoroutines();
        this.DoAfterTime(() => text.text = "", 3);

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