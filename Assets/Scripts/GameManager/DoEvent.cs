using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class DoEvent {

        public string id;
        public string type;
        string name;
        public string[] args;

        public string action;

        public DoEvent(string id, string name, string action, params string[] args) {
            this.id = id;
            this.name = name;
            this.action = action;
            this.args = args;
        }

        public string[] GetNames() {
            if (name.Contains("|")) {

                string[] options = name.Split('|');
                string s = options[0] + "." + (options.Slice(1, -1).RandomItem());
                return new string[] { s };

            } else if (name.Contains("&")) {
                
                string[] options = name.Split('&');
                List<string> names = new List<string>();
                for (int i = 1; i < options.Length; i++) {
                    names.Add(options[0] + "." + options[i]);
                }
                return names.ToArray();
            } else {
                return new string[] { name };
            }
        }

        public string Print() {
            return id + " " + name + " " + action + " " + args.Print();
        }

    }
}