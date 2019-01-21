using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GotoRoomMenu : MonoBehaviour {
    public Room kitchen, bed;

    Npc curNpc;

    void Start(){
        NpcState.OnClick+=Open;
    }

    public void Open(Npc npc) {
        gameObject.SetActive(true);
        curNpc = npc;
    }

    public void Close() {

    }

    public void Click(Room r) {
        curNpc.GoToRoom(r);
        curNpc = null;
    }
}