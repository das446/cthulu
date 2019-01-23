using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GotoRoomMenu : MonoBehaviour {
    public Room kitchen, bed;

    [SerializeField] Npc curNpc;
    [SerializeField] Player player;

    void Start() {
        NpcState.OnClick += Open;
        gameObject.SetActive(false);
    }

    public void Open(Npc npc, Player p) {
        gameObject.SetActive(true);
        curNpc = npc;
        player = p;
        player.Lock();

    }

    public void Close() {

    }

    public void Click(Room r) {
        curNpc.GoToRoom(r);
        curNpc.interacting = false;
        curNpc = null;
        gameObject.SetActive(false);
        player.Unlock();

    }
}