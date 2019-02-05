using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class WaitEvent : GameEvent {

        public int time;

        public WaitEvent(string id, string time) {
            this.id = id;
            this.args = new string[] { time };
            this.time = Int32.Parse(time);
        }

    }
}