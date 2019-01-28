using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class GameEventList : MonoBehaviour {
    [SerializeField] List<TimedEvent> events;
    int curEventIndex = 0;

    float time;
    bool started = false;

    [SerializeField] bool master = false;

    void Start(){
        if(master){
            Init();
        }
    }

    public void Init() {
        time = 0;
        started = true;
    }

    // Update is called once per frame
    void Update() {
        if (started) {
            time += Time.deltaTime;
            if (curEventIndex >= events.Count) { return; }
            else if (time >= events[curEventIndex].time) {
                events[curEventIndex].gameEvent.Invoke();
                curEventIndex++;
            }
        }
    }

    [System.Serializable]
    struct TimedEvent {
        public float time;
        public UnityEvent gameEvent;
    }
}