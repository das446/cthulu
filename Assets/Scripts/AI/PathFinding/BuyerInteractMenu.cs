using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.UI;

public class BuyerInteractMenu : MonoBehaviour {
    [SerializeField] Npc curNpc;
    [SerializeField] Player player;
    [SerializeField] float speed = 0.1f;
    public Image interest;
    public Image chatTimer;
    public Button buyButton;
    public Button sendButton;
    public Button chatButton;
    public GameObject map;

    public Text halfM, mostM, fullM;

    public float chatLength = 5;

    public SubtitleController subControl;

    void Start() {
        NpcState.OnClick += Open;
        gameObject.SetActive(false);
    }

    public void Open(Npc npc, Player p) {
        gameObject.SetActive(true);
        curNpc = npc;
        player = p;
        player.Lock();
        SetInterestBar();
        SetButtons();

        //Camera.main.transform.localEulerAngles = new Vector3(0, 0, 0);

        StartCoroutine(MoveCamera());

        npc.ResetAnimParams();
        npc.animControl.SetBool("isTalking", true);
    }

    private void SetButtons() {
        if (curNpc.InterestPercent() >= 1) {
            sendButton.gameObject.SetActive(false);
            chatButton.gameObject.SetActive(false);
        } else {
            sendButton.gameObject.SetActive(true);
            chatButton.gameObject.SetActive(true);
        }
    }

    private void SetInterestBar() {
        float percent = curNpc.InterestPercent();
        if (percent <= 0.1f) {
            interest.color = Color.red;
            buyButton.gameObject.SetActive(false);

        } else if (percent <= 0.5f) {
            interest.color = Color.yellow;
            buyButton.gameObject.SetActive(false);

        } else {
            interest.color = Color.green;
            buyButton.gameObject.SetActive(true);
        }

        interest.fillAmount = (float) (curNpc.interest) / (curNpc.maxInterest);

        halfM.text = curNpc.CalculateSell(0.5f)+"M";
        mostM.text = curNpc.CalculateSell(0.75f)+"M";
        fullM.text = curNpc.CalculateSell(1)+"M";

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

    public void SendBuyerToRoom(Room r) {
        curNpc.GoToRoom(r);
        curNpc.locked = false;
        curNpc.Unlock();
        string npcName = curNpc.name;
        curNpc = null;
        map.gameObject.SetActive(false);
        gameObject.SetActive(false);
        player.Unlock();
        GameManager.When(npcName, "player.goto");

    }

    public void ClickChat() {
        curNpc.Chat(player, chatTimer, chatLength);
        //subControl.RandSubOnly(chatLength);
        gameObject.SetActive(false);
    }

    public void OpenMap() {
        map.gameObject.SetActive(true);
        gameObject.SetActive(false);
    }

    public void Sell() {
        curNpc.locked = false;
        curNpc.Unlock();
        curNpc.Buy(player);
        string npcName = curNpc.name;
        curNpc = null;
        gameObject.SetActive(false);
        player.Unlock();
        GameManager.When(npcName, "acceptoffer");
    }

}