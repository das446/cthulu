using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using Cthulu;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Player : MonoBehaviour, ICanHold {

    cakeslice.Outline curOutline;
    [SerializeField] float interactRange;
    public Transform hand;
    IPickUpable curItem;
    [SerializeField] PlayerMovement movement;
    [SerializeField] float power;
    [SerializeField] Camera cam;
    int money;
    [SerializeField] Text moneyText;

    public GameObject pos;

    public float Power => power;

    public Transform Hand => hand;

    [SerializeField] int goalMoney;

    public static Player singleton;

    void Awake()
    {   
        if(singleton == null)
            singleton = this;
    }

    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {
        CheckOutline();
        CheckInput();
        pos.transform.position = transform.position + Vector3.up;
    }

    void CheckInput() {
        //weird things were happening when interact and using furniture were bound to the same butoon but this should fix it
        //so they don't happen on the same frame
        bool f = CheckFurnitureInput();
        if (!f) {
            CheckInteract();
        }
    }

    bool CheckFurnitureInput() {
        if (Input.GetMouseButtonDown(0) && curItem != null) {
            Debug.Log("Use");
            curItem.Use(this);
            return true;
        }
        return false;
    }

    void LoseItem() {
        movement.SetSpeed(x => x * curItem.weight);
        curItem = null;

    }

    public void Release(IPickUpable f) {
        movement.SetSpeed(x => x * curItem.weight);
        curItem = null;
        Debug.Log("Release p");

    }

    private void CheckInteract() {
        if (Input.GetMouseButtonDown(0) && !movement.IsLocked()) {
            RaycastHit hit;
            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, interactRange)) {
                Interactable i = hit.collider.gameObject.GetComponent<Interactable>();
                i?.Interact(this, hit.point);
            }
        }
    }

    void CheckOutline() { //TODO: Make the logic less of a mess
        //0=close enough
        //1=too far
        //2=close enough but can't, not implemented yet, does someone want to?
        RaycastHit hit;
        if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, interactRange * 10)) {
            IHasOutline ho = hit.collider.gameObject.GetComponent<IHasOutline>();
            cakeslice.Outline outline = ho?.GetOutline();
            if (outline == null) {
                if (curOutline != null) {
                    curOutline.enabled = false;
                }
                curOutline = null;
            } else if (curItem != null) {
                if (curOutline != null) {
                    curOutline.enabled = false;
                }
                curOutline = null;

            } else if (outline != curOutline) {
                if (curOutline != null) {
                    curOutline.enabled = false;
                }
                curOutline = outline;
                if (hit.distance <= interactRange) {
                    curOutline.color = 0;
                } else {
                    curOutline.color = 1;
                }
                curOutline.enabled = true;
            } else if (curOutline != null) {
                if (hit.distance <= interactRange) {
                    curOutline.color = 0;
                } else {
                    curOutline.color = 1;
                }
            }
        } else if (curOutline != null) {
            curOutline.enabled = false;
            curOutline = null;
        }
    }

    /// <summary>
    /// While locked the camera and player wont move, and you can see the cursor
    /// </summary>
    public void Lock() {
        movement.Lock();
    }

    /// <summary>
    /// While unlocked the camera and player can move, and you can't see the cursor
    /// </summary>
    public void Unlock() {
        movement.Unlock();
    }

    public void PickUp(IPickUpable f) {
        curItem = f;
        Debug.Log(f);
        movement.SetSpeed(x => x / curItem.weight);
    }

    public Vector3 GetThrowDir() {
        return cam.transform.forward;
    }

    public void ChangeMoney(int amnt) {
        money += amnt;
        moneyText.text = "$" + money.ToString("#,##0");

        if (money >= goalMoney) {
            WinLevel();
        }
    }

    private void WinLevel() {
        Lock();
        SceneManager.LoadScene("WinScreen");
    }

    public IPickUpable CurHeld() {
        return curItem;
    }
}