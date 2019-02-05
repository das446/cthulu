using UnityEngine;

namespace Cthulu.Events {

    public interface IManageable {
        GameObject obj { get; }
        void Set(GameEvent ge);
    }
}