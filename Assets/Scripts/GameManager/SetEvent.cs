using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class SetEvent : GameEvent {

        private string[] args;

        public SetEvent(string id, string name, params string[] args) {
            this.args = args;
        }

        public override void Execute() {
            throw new System.NotImplementedException();
        }
    }
}