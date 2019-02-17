using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class DoEvent : GameEvent {

        public string action;

        public string[] args;

        public DoEvent(string id, string name, string action, params string[] args) {
            this.id = id;
            this.name = name;
            this.action = action;
            this.args = args;
        }

        public string Print() {
            return id + " " + name + " " + action + " " + args.Print();
        }

    }
}