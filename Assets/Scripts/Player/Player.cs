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
    public Furniture curItem;
    [SerializeField] PlayerMovement movement;
    [SerializeField] float power;
    [SerializeField] Camera cam;
    int money;
    [SerializeField] Text moneyText;

    public GameObject pos;

    public float Power => power;

    public Transform Hand => hand;

    [SerializeField] int goalMoney;

    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {
        CheckOutline();
        CheckInput();
        pos.transform.position = transform.position;
    }

    void CheckInput() {
        CheckInteract();
        CheckFurnitureInput();
    }

    void CheckFurnitureInput() {
        if (Input.GetMouseButtonDown(0)) {
            curItem?.Use(this);
        } else if (Input.GetMouseButtonDown(1)) {
            Release(curItem);
        }
    }

    void LoseItem() {
        movement.SetSpeed(x => x * curItem.weight);
        curItem = null;
        
    }

    public void Release(Furniture f) {
        movement.SetSpeed(x => x * curItem.weight);
        f?.Release(this);
        curItem = null;

    }

    private void CheckInteract() {
        if (Input.GetMouseButtonDown(0) && !movement.IsLocked()) {
            RaycastHit hit;
            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, interactRange)) {
                Interactable i = hit.collider.gameObject.GetComponent<Interactable>();
                i?.Interact(this,hit.point);
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

    public void PickUp(Furniture f) {
        curItem = f;
        movement.SetSpeed(x => x / curItem.weight);
    }

    public Vector3 GetThrowDir() {
        return cam.transform.forward;
    }

    public Furniture CurFurniture() {
        return curItem;
    }

    public void ChangeMoney(int amnt){
        money+=amnt;
        moneyText.text = money.ToString("#,##0")+"$";

        if(money>=goalMoney){
            WinLevel();
        }
    }

    private void WinLevel()
    {
        SceneManager.LoadScene("WinScreen");
    }

    public void PickUp(IPickUpable i)
    {
        throw new NotImplementedException();
    }

    public void Release(IPickUpable i)
    {
        throw new NotImplementedException();
    }

    public IPickUpable CurHeld()
    {
        throw new NotImplementedException();
    }
}