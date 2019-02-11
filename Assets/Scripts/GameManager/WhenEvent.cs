using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class WhenEvent : GameEvent
    {
        public string[] dos;

        public WhenEvent(string name, params string[] dos)
        {
            this.name = name;
            this.dos = dos;
        }

        public string Print(){
            return name + dos.Print();
        }

       
    }
}