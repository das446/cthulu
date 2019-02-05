using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Cthulu.Events {
    [System.Serializable]
    public abstract class GameEvent {
        public string id;
        public string type;
        public string name;
        public string[] args;

    }
}