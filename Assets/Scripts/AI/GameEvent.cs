using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameEvent : ScriptableObject {
    public int time;
    [SerializeField] UnityEvent gameEvent;

    public void Execute() {
        
    }
}