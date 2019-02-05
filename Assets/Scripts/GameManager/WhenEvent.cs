using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class WhenEvent : GameEvent
    {
        public string call;

        public WhenEvent(string id, string name, string call)
        {
            this.id = id;
            this.name = name;
            this.call = call;
        }

        public override void Execute()
        {
            throw new System.NotImplementedException();
        }
    }
}