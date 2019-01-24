using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameEventManager : MonoBehaviour {
    [SerializeField] List<TimedEvent> events;
    int curEventIndex = 0;

    float time;

    void Start() {
        time = 0;
    }

    // Update is called once per frame
    void Update() {
        time += Time.deltaTime;
        if (curEventIndex >= events.Count) { return; }
        if (time >= events[curEventIndex].time) {
            events[curEventIndex].gameEvent.Invoke();
            curEventIndex++;
            Debug.Log("Event");
        }
    }

    [System.Serializable]
    struct TimedEvent {
        public float time;
        public UnityEvent gameEvent;
    }
}