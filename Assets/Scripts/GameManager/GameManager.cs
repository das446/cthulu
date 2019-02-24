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
        Dictionary<string, WhenEvent> whens = new Dictionary<string, WhenEvent>(); //uses event name as key

        public static Dictionary<string, IManageable> Objects = new Dictionary<string, IManageable>();

        /// <summary>
        /// maps a objectName to a variable, unfortunately it can only hold one at a time
        /// </summary>
        /// <typeparam name="string">objectName</typeparam>
        /// <typeparam name="string">variableName</typeparam>
        /// <returns></returns>
        public static Dictionary<string, string> Variables = new Dictionary<string, string>();

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
            List<string> aEvent = new List<string>();
            for (int i = 0; i < w.dos.Length; i++) {
                if (w.dos[i] != "(do") {

                } else if (w.dos[i] == "(do") {
                    aEvent.Add("a");
                    aEvent.Add("do");
                    i++;
                    aEvent.Add(w.dos[i]);
                    i++;
                    aEvent.Add(w.dos[i]);
                    i++;
                    while (w.dos[i] != ")") {
                        aEvent.Add(w.dos[i]);
                        i++;
                    }
                    DoEvent d = new DoEvent("a", aEvent[2], aEvent[3], aEvent.ToArray().Slice(4, -1));
                    Do(d);

                } else if (w.dos[i].StartsWith("wait:")) {
                    int time = Int32.Parse(w.dos[i].Split(':') [1]);
                    yield return new WaitForSeconds(time);
                } else {
                    DoEvent d = events[w.dos[0]];
                    Do(d);
                }
            }
        }

        public static void When(string caller, string function) {
            if (singleton == null) { Debug.LogWarning("No instance of GameMAnager"); return; }
            if (!singleton.enabled) { return; }

            string name = caller + seperator + function;
            if (singleton.whens.ContainsKey(name)) {
                WhenEvent whenEvent = singleton.whens[name];
                singleton.StartCoroutine(singleton.ExecuteWhen(whenEvent));
            }

            if (Variables.ContainsKey(caller)) {
                name = Variables[caller] + seperator + function;
                if (singleton.whens.ContainsKey(name)) {
                    WhenEvent whenEvent = singleton.whens[name];
                    singleton.StartCoroutine(singleton.ExecuteWhen(whenEvent));
                }
            }

        }

        public void MakeAndAddEvent(params string[] args) {
            if (args[1] == "do") {
                DoEvent se = new DoEvent(args[0], args[2], args[3], args.Slice(4, -1));
                events.Add(se.id, se);
            } else if (args[0] == "when") {
                WhenEvent we = new WhenEvent(args[1], args.Slice(2, -1));
                whens.Add(we.name, we);
            }
        }

        void Do(DoEvent d) {
            string[] names = d.GetNames();
            foreach (string n in names) {
                IManageable m;
                Objects.TryGetValue(n, out m);
                if (m == null) {
                    Debug.LogWarning("No object named " + n + " in scene");
                } else {
                    m?.Do(d);
                }
            }
        }

        public static bool HasObject(string n) {
            return Objects.ContainsKey(n);
        }

    }
}