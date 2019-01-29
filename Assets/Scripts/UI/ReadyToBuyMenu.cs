using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReadyToBuyMenu : MonoBehaviour {

    [SerializeField] Npc curNpc;
    [SerializeField] Player player;
    [SerializeField] float speed = 150;

    void Start() {
        BuyState.OnClick += Open;
        BuyState.ExitState += Close;
        gameObject.SetActive(false);
    }

    private void Close(Npc npc) {
        curNpc = null;
        gameObject.SetActive(false);
    }

    public void Open(Npc npc, Player p) {
        gameObject.SetActive(true);
        curNpc = npc;
        player = p;
        player.Lock();

        //Camera.main.transform.localEulerAngles = new Vector3(0, 0, 0);

        StartCoroutine(MoveCamera());

    }

    IEnumerator MoveCamera() {
        Camera cam = Camera.main;
        Vector3 target = Vector3.zero;
        while (Mathf.Abs(cam.transform.localEulerAngles.x) < 350) {
            float x = cam.transform.localEulerAngles.x - Time.deltaTime * speed;
            cam.transform.localEulerAngles = new Vector3(x, 0, 0);
            yield return new WaitForEndOfFrame();
        }
    }

    public void Click() {
        curNpc.locked = false;
        curNpc.Unlock();
        curNpc.Buy(player);
        curNpc = null;
        gameObject.SetActive(false);
        player.Unlock();
    }
}