using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;

namespace Cthulu.Events {
    public class GameManager : MonoBehaviour {
        Dictionary<string, GameEvent> events;//uses id name as key
        List<GameEvent> eventList;
        Dictionary<string, WhenEvent> whens; //uses event name as key

        public static Dictionary<string, IManageable> Objects = new Dictionary<string, IManageable>();

        static GameManager singleton;
        static string seperator = ":";


        void Start() {
            singleton = this;
            string[][] eventStrings = new string[][] {
                new string[] { "1", "SET", "room.living.door.1", "open" },
                new string[] { "wait5", "WAIT", "5" },
                new string[] { "BobEnter", "SET", "npc.normal.Bob", "nodes.entrance" },
                new string[] { "WHEN", "npc.normal.Bob:Die", "TimEnter" },
                new string[] { "TimEnter", "SET", "npc.normal.Tim", "nodes.entrance" },
            };

            for (int i = 0; i < eventStrings.Length; i++) {
                string[] line = eventStrings[i];
                MakeEvent(line);

            }

            StartCoroutine(Execute());
        }

        IEnumerator Execute() {
            for (int i = 0; i < events.Count; i++) {
                GameEvent cur = eventList[i];
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
                eventList.Add(se);
                return se;
            } else if (args[1] == "WAIT") {
                WaitEvent we = new WaitEvent(args[0], args[2]);
                events.Add(we.id, we);
                eventList.Add(we);
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