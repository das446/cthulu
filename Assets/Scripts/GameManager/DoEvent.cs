using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class DoEvent : GameEvent {

        public string action;

        public string[] args;

        public DoEvent(string id, string name,string action, params string[] args) {
            this.action = action;
            this.args = args;
        }

        
    }
}