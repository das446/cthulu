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

        public string GetName() {
            string[] options = name.Split('|');
            if (options.Length == 1) {
                return name;
            } else {
                return options[0] + "." + (options.Slice(1, -1).RandomItem());
            }
        }

        public string Print() {
            return id + " " + name + " " + action + " " + args.Print();
        }

    }
}