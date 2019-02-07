using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class WhenEvent : GameEvent
    {
        public string[] sets;

        public WhenEvent(string name, params string[] sets)
        {
            this.name = name;
            this.sets = sets;
        }

       
    }
}