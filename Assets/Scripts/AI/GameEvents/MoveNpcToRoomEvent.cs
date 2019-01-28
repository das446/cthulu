using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "GameEvent/MoveNpc")]
public class MoveNpcToRoomEvent : ScriptableObject {

    [System.Serializable]
    public struct Arguments {
        public Npc npc;
        public Room room;
    }

    [SerializeField]
    public Arguments a;

    [SerializeField]
    
    public void Move() {

    }

}