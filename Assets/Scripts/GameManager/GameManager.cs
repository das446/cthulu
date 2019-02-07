using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Cthulu.Events {
    public class GameManager : MonoBehaviour {
        Dictionary<string, SetEvent> events = new Dictionary<string, SetEvent>(); //uses id name as key
        [SerializeField] List<GameEvent> onStart = new List<GameEvent>();
        Dictionary<string, WhenEvent> whens = new Dictionary<string, WhenEvent>(); //uses event name as key

        public static Dictionary<string, IManageable> Objects = new Dictionary<string, IManageable>();

        static GameManager singleton;
        static string seperator = ":";

        void Start() {
            singleton = this;

            ReadFiles();
        }

        void ReadFiles() {
            string[] files = new string[] { "START.txt" };
            string path = Application.dataPath + "/StreamingAssets/Events/" + SceneManager.GetActiveScene().name + "/";
            for (int i = 0; i < files.Length; i++) {
                string f = path + files[i];
                string[] lines = System.IO.File.ReadAllLines(f);
                for (int j = 0; j < lines.Length; j++) {
                    if (lines[j].StartsWith("//") || String.IsNullOrWhiteSpace(lines[j])) {
                        continue;
                    }
                    GameEvent e = MakeEvent(lines[j].Split());
                    if (files[i] == "START.txt") {
                        onStart.Add(e);
                    }
                }
            }
        }

        IEnumerator ExecuteWhen(WhenEvent w) {
            bool anonyomous = false;
            string[] aEvent = new string[] { };
            for (int i = 0; i < w.sets.Length; i++) {
                string cur = w.sets[i];
                if (cur == "(" & w.sets[i + 1] == "SET") {
                    anonyomous = true;
                    aEvent = new string[] { };
                } else if (anonyomous) {
                    if (cur == ")") {
                        SetEvent s = new SetEvent("a", aEvent[0], aEvent.Slice(1, -1));
                        IManageable m = Objects[s.name];
                        m.Set(s);
                        anonyomous = false;
                        i++;

                    } else {
                        List<string> temp = aEvent.ToList();
                        temp.Add(cur);
                        aEvent = temp.ToArray();
                    }
                } else if (cur.StartsWith("wait:")) {
                    int time = Int32.Parse(cur.Split(':') [1]);
                    yield return new WaitForSeconds(time);
                } else {
                    SetEvent s = events[cur];
                    IManageable m = Objects[s.name];
                    m.Set(s);
                }
            }
        }

        public static void When(string caller, string function) {
            if (singleton == null) { return; }
            if (!singleton.enabled) { return; }
            string name = caller + seperator + function;
            if (singleton.whens.ContainsKey(name)) {
                WhenEvent whenEvent = singleton.whens[name];
                singleton.StartCoroutine(singleton.ExecuteWhen(whenEvent));
            }

        }

        public GameEvent MakeEvent(params string[] args) {
            if (args.Length < 2) {
                Debug.LogError("Tried to make an event with too few arguments: " + args.Print());
                return null;
            }
            Debug.Log(args.Print());
            if (args[1] == "SET") {
                SetEvent se = new SetEvent(args[0], args[2], args.Slice(3, -1));
                events.Add(se.id, se);
                onStart.Add(se);
                return se;
            } else if (args[0] == "WHEN") {
                WhenEvent we = new WhenEvent(args[1], args.Slice(2, -1));
                whens.Add(we.name, we);
                return we;
            } else {
                return null;
            }
        }

    }
}