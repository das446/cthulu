using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace Cthulu.Events {
    public class GameManager : MonoBehaviour {
        Dictionary<string, GameEvent> events; //uses id name as key
        [SerializeField] List<GameEvent> onStart;
        Dictionary<string, WhenEvent> whens; //uses event name as key

        public static Dictionary<string, IManageable> Objects = new Dictionary<string, IManageable>();

        static GameManager singleton;
        static string seperator = ":";

        void Start() {
            singleton = this;

            ReadFiles();

            StartCoroutine(Execute());
        }

        void ReadFiles() {
            string[] files = new string[] { "START.txt" };
            string path = Application.dataPath + "/StreamingAssets/Events/" + SceneManager.GetActiveScene().name + "/";
            for (int i = 0; i < files.Length; i++) {
                string f = path + files[i];
                string[] lines = System.IO.File.ReadAllLines(f);
                for (int j = 0; i < lines.Length; i++) {
                    if (lines[i].StartsWith("//")) {
                        continue;
                    }
                    GameEvent e = MakeEvent(lines[i].Split());
                    if (files[i] == "START.txt") {
                        onStart.Add(e);
                    }
                }
            }
        }

        IEnumerator Execute() {
            for (int i = 0; i < events.Count; i++) {
                GameEvent cur = onStart[i];
                if (cur.type == "WAIT") {
                    yield return new WaitForSeconds(Int32.Parse(cur.args[0]));
                } else if (cur.type == "SET") {
                    IManageable m = Objects[cur.name];
                    m.Set(cur);
                }
            }
        }

        public static void When(string caller, string function) {
            string name = caller + seperator + function;
            if (singleton.whens.ContainsKey(name)) {
                WhenEvent whenEvent = singleton.whens[name];
                GameEvent setEvent = singleton.events[whenEvent.call];
                IManageable m = Objects[setEvent.name];
                m.Set(setEvent);
            }

        }

        public GameEvent MakeEvent(params string[] args) {

            if (args[1] == "SET") {
                SetEvent se = new SetEvent(args[0], args[2], args.Slice(3, -1));
                events.Add(se.id, se);
                onStart.Add(se);
                return se;
            } else if (args[1] == "WAIT") {
                WaitEvent we = new WaitEvent(args[0], args[2]);
                events.Add(we.id, we);
                onStart.Add(we);
                return we;
            } else if (args[0] == "WHEN") {
                WhenEvent we = new WhenEvent(args[1], args[2]);
                whens.Add(we.name, we);
                return we;
            } else {
                return null;
            }
        }

    }
}