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
        Dictionary<string, List<WhenEvent>> whens = new Dictionary<string, List<WhenEvent>>(); //uses event name as key
        Dictionary<string, string> flags = new Dictionary<string, string>(); //all flags default to 0

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
        public string fileName = "EVENTS";
        public bool testing;
        public bool Debugging;
        [SerializeField] bool printToFile;

        void Awake() {

            events = new Dictionary<string, DoEvent>();
            whens = new Dictionary<string, List<WhenEvent>>();
            new Dictionary<string, string>();
            Variables = new Dictionary<string, string>();

            singleton = this;
            fileName = PlayerPrefs.GetString("lvl", "tutorial");

            ReadFile();
            if (printToFile) {
                PrintManageablesToFile();
            }
        }

        void ReadFile() {
            string path = Application.streamingAssetsPath + "/Events/";
            string f = path + fileName + ".txt";
            Debug.Log(f);
            string[] lines = System.IO.File.ReadAllLines(f);
            List<string> newLine = new List<string>();
            bool comment = false;
            for (int i = 0; i < lines.Length; i++) {
                string[] line = lines[i].Split(' ');
                for (int j = 0; j < line.Length; j++) {
                    string word = line[j].Trim();
                    if (word.StartsWith("//")) {
                        comment = true;
                    } else if (word == ";" && !comment) {
                        MakeAndAddEvent(newLine.ToArray());
                        newLine = new List<string>();
                    } else if (!comment && !String.IsNullOrWhiteSpace(word)) {
                        newLine.Add(word.ToLower());
                    }

                    if (j >= line.Length - 1) {
                        comment = false;
                    }

                }

            }
        }

        IEnumerator ExecuteWhen(WhenEvent w) {
            for (int i = 0; i < w.dos.Length; i++) {
                if (w.dos[i] == "(do") {
                    i = ExecuteAnonymousDo(w, i);

                } else if (w.dos[i].StartsWith("wait")) {
                    int time = Int32.Parse(w.dos[i].Split('.', ':') [1]);
                    yield return new WaitForSeconds(time);

                } else if (w.dos[i].StartsWith("if.flag.")) {
                    string flag = w.dos[i].Split('.', '=') [2];
                    string checkVal = w.dos[i].Split('=') [1];
                    if (!flags.ContainsKey(flag)) {
                        flags.Add(flag, "0");
                    }
                    string flagVal = flags[flag];
                    if (flagVal != checkVal) {
                        yield break;
                    }

                } else if (w.dos[i].StartsWith("flag.")) {
                    SetFlag(w, i);

                } else {
                    DoEvent d = events[w.dos[0]];
                    Do(d);
                }
            }
        }

        private void SetFlag(WhenEvent w, int i) {
            string flag = w.dos[i].Split('.', '=') [1];
            string val = w.dos[i].Split('=') [1];
            flags[flag] = val;
        }

        private int ExecuteAnonymousDo(WhenEvent w, int i) {
            List<string> aEvent = new List<string>();
            aEvent.Add("a");
            aEvent.Add("do");
            i++;
            aEvent.Add(w.dos[i]);
            i++;
            aEvent.Add(w.dos[i]);
            i++;
            while (!w.dos[i].EndsWith(")")) {
                if (w.dos[i] == ")") {
                    aEvent.Add(w.dos[i]);
                    i++;
                } else {
                    aEvent.Add(w.dos[i].TrimEnd(')'));
                    i++;
                }
            }
            DoEvent d = new DoEvent("a", aEvent[2], aEvent[3], aEvent.ToArray().Slice(4, -1));
            Do(d);
            return i;
        }

        public static void When(string caller, string function, params string[] args) {
            for (int i = 0; i < args.Length; i++) {
                When(caller, function + "." + args[i]);
            }
        }

        public static void When(string caller, string function) {
            if (singleton == null) { Debug.LogWarning("No instance of GameManager"); return; }
            if (!singleton.enabled) { return; }

            string name = caller + seperator + function;
            if (singleton.Debugging) {
                Debug.Log(name);
            }
            if (singleton.whens.ContainsKey(name)) {
                List<WhenEvent> whenEvents = singleton.whens[name];
                foreach (WhenEvent whenEvent in whenEvents) {
                    singleton.StartCoroutine(singleton.ExecuteWhen(whenEvent));
                }
            }

            if (Variables.ContainsKey(caller)) {
                Debug.Log("var");
                name = Variables[caller] + seperator + function;
                List<WhenEvent> whenEvents = singleton.whens[name];
                if (singleton.whens.ContainsKey(name)) {
                    foreach (WhenEvent whenEvent in whenEvents) {
                        singleton.StartCoroutine(singleton.ExecuteWhen(whenEvent));
                    }
                }
            }

        }

        public void MakeAndAddEvent(params string[] args) {
            if (args[1] == "do") {
                DoEvent se = new DoEvent(args[0], args[2], args[3], args.Slice(4, -1));
                events.Add(se.id, se);
            } else if (args[0] == "when") {
                WhenEvent we = new WhenEvent(args[1], args.Slice(2, -1));
                if (whens.ContainsKey(we.name)) {
                    whens[we.name].Add(we);
                } else {
                    whens.Add(we.name, new List<WhenEvent>() { we });
                }
            }
        }

        void Do(DoEvent d) {
            string[] names = d.GetNames();
            foreach (string n in names) {
                IManageable m;
                Objects.TryGetValue(n, out m);
                if (m == null) {
                    Debug.LogWarning("No object named " + n + " in scene. " + d.Print());
                } else {
                    m?.Do(d);
                }
            }
        }

        public static bool HasObject(string n) {
            return Objects.ContainsKey(n);
        }

        List<string> AllManageableNames() {
            List<string> lines = new List<string>();
            foreach (string s in Objects.Keys) {
                lines.Add(s);
            }
            lines.Sort();
            return lines;
        }

        public void PrintManageablesToFile() {
            List<string> lines = AllManageableNames();
            string path = Application.streamingAssetsPath + "/Events/" + SceneManager.GetActiveScene().name + "/";
            string f = path + "objects.txt";
            System.IO.File.WriteAllLines(f, lines);
        }

    }
}