using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Cthulu.Events {
    public class GameManager : MonoBehaviour {
        Dictionary<string, DoEvent> events = new Dictionary<string, DoEvent>(); //uses id name as key
        [SerializeField] List<GameEvent> onStart = new List<GameEvent>();
        Dictionary<string, WhenEvent> whens = new Dictionary<string, WhenEvent>(); //uses event name as key

        public static Dictionary<string, IManageable> Objects = new Dictionary<string, IManageable>();

        static GameManager singleton;
        static string seperator = ":";
        public string fileName = "EVENTS.txt";

        void Awake() {
            singleton = this;

            ReadFile();
        }

        void ReadFile() {
            string path = Application.streamingAssetsPath + "/Events/" + SceneManager.GetActiveScene().name + "/";
            string f = path + fileName;
            string[] lines = System.IO.File.ReadAllLines(f);
            for (int i = 0; i < lines.Length; i++) {
                if (lines[i].StartsWith("//") || String.IsNullOrWhiteSpace(lines[i])) {
                    continue;
                }
                MakeAndAddEvent(lines[i].ToLower().Split());

            }
        }

        IEnumerator ExecuteWhen(WhenEvent w) {
            bool anonyomous = false;
            string[] aEvent = new string[] { };
            for (int i = 0; i < w.dos.Length; i++) {
                string cur = w.dos[i];
                if (cur == "(do") {
                    anonyomous = true;
                    aEvent = new string[] { };
                } else if (anonyomous) {
                    if (cur == ")") {
                        DoEvent d = new DoEvent("a", aEvent[0], aEvent[1], aEvent.Slice(2, -1));
                        IManageable m = Objects[d.name];
                        m.Do(d);
                        anonyomous = false;

                    } else if (cur.EndsWith(")")) {
                        List<string> temp = aEvent.ToList();
                        temp.Add(cur.TrimEnd(')'));
                        aEvent = temp.ToArray();
                        Debug.Log(aEvent.Print());
                        DoEvent d = new DoEvent("a", aEvent[0], aEvent[1], aEvent.Slice(2, -1));
                        IManageable m = Objects[d.name];
                        m.Do(d);
                        anonyomous = false;

                    } else {
                        List<string> temp = aEvent.ToList();
                        temp.Add(cur);
                        aEvent = temp.ToArray();
                    }
                } else if (cur.StartsWith("wait:")) {
                    int time = Int32.Parse(cur.Split(':') [1]);
                    yield return new WaitForSeconds(time);
                } else {
                    DoEvent s = events[cur];
                    IManageable m = Objects[s.name];
                    m.Do(s);
                }
            }
        }

        public static void When(string caller, string function) {
            string name = caller + seperator + function;
            if (singleton == null) { return; }
            if (!singleton.enabled) { return; }
            if (singleton.whens.ContainsKey(name)) {
                WhenEvent whenEvent = singleton.whens[name];
                singleton.StartCoroutine(singleton.ExecuteWhen(whenEvent));
            }

        }

        public GameEvent MakeAndAddEvent(params string[] args) {
            if (args[1] == "do") {
                DoEvent se = new DoEvent(args[0], args[2], args[3], args.Slice(4, -1));
                events.Add(se.id, se);
                onStart.Add(se);
                return se;
            } else if (args[0] == "when") {
                WhenEvent we = new WhenEvent(args[1], args.Slice(2, -1));
                whens.Add(we.name, we);
                return we;
            } else {
                return null;
            }
        }

    }
}