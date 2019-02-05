using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class WhenEvent : GameEvent
    {
        public string call;

        public WhenEvent(string name, string call)
        {
            this.name = name;
            this.call = call;
        }

        public override void Execute()
        {
            throw new System.NotImplementedException();
        }
    }
}