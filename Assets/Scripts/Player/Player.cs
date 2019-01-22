using System;
using System.Collections;
using System.Collections.Generic;
using cakeslice;
using UnityEngine;
using Cthulu;

public class Player : MonoBehaviour {

    Outline curOutline;
    [SerializeField] float interactRange;
    public Transform hand;
    public IPickUpable curItem;
    bool locked;
    [SerializeField]PlayerMovement movement;
    // Start is called before the first frame update
    void Start() {

    }

    // Update is called once per frame
    void Update() {
        CheckOutline();
        CheckInteract();
        CheckThrow();
    }

    void CheckThrow() {
        if (Input.GetMouseButtonDown(0)) {
            Release(curItem);
        }
    }

    void Release(IPickUpable t) {
        t?.Release(this);
        curItem = null;
    }

    private void CheckInteract() {
        if (Input.GetMouseButtonDown(0)) {
            RaycastHit hit;
            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, interactRange)) {
                Interactable i = hit.collider.gameObject.GetComponent<Interactable>();
                i?.Interact(this);
            }
        }
    }

    void PickUp(IPickUpable p) {
        curItem = p;
        p.GetPickedUp(this);
    }

    void CheckOutline() { //TODO: Make the logic less of a mess
        //0=close enough
        //1=too far
        //2=close enough but can't, not implemented yet, does someone want to?
        RaycastHit hit;
        if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, interactRange * 10)) {
            IHasOutline ho = hit.collider.gameObject.GetComponent<IHasOutline>();
            Outline outline = ho?.GetOutline();
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
    public void Lock(){
        movement.Lock();
    }

    /// <summary>
    /// While unlocked the camera and player can move, and you can't see the cursor
    /// </summary>
    public void Unlock(){
        movement.Unlock();
    }
}