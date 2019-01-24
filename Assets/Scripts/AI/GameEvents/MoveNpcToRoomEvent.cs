using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "GameEvent/MoveNpc")]
public class MoveNpcToRoomEvent : ScriptableObject {

    [SerializeField]
    public struct Arguments {
        public Npc npc;
        public Room room;
    }
    public Arguments a;
    // Start is called before the first frame update

    public void Move() {

    }

}