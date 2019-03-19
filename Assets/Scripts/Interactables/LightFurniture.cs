using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class LightFurniture : Furniture, IPickUpable, IPossesable {

    // new void Start(){
    //     base.Start();
    //     rb.centerOfMass = transform.position + Vector3.down;
    // }

    bool readyToBreak = false;
    [SerializeField] int throwDmg = 10;
    Ghost ghost;
    public bool possessable;
    Transform ghostTarget;
    float jumpTime;
    public float baseJumpTime = 2;
    public float jumpForce = 300;

    [SerializeField] Vector3 throwRot;

    float audioTimer = 0;

    AudioSource _audio;
    public AudioClip thud;

    public GameObject dust;

    public static List<GameObject> dustPool = new List<GameObject>();

    new protected void Start() {
        base.Start();
        Ghost.possesables.Add(this);
        _audio = GetComponent<AudioSource>();
    }

    public override void Interact(Player p) {
        Debug.Log(p.CurHeld() == null && !readyToBreak);
        if (p.CurHeld() == null && !readyToBreak) {
            GetPickedUp(p);
            p.PickUp(this);
        }
    }

    public void GetPickedUp(ICanHold h) {
        curState = new HeldState(this, h);
        transform.parent = h.Hand;
        transform.localPosition = Vector3.zero;
        transform.rotation = Quaternion.identity;
        rb.angularVelocity = Vector3.zero;
        rb.velocity = Vector3.zero;
        rb.useGravity = false;
        rb.isKinematic = false;
        col.enabled = false;
        holder = h;

        ghost?.UnPossess();
        UnPossess();

    }

    public void Release(ICanHold h) {
        curState = new InAirState(this, h);
        transform.localEulerAngles = throwRot;
        transform.parent = null;
        transform.position = transform.position + h.obj.transform.forward;
        rb.useGravity = true;
        col.enabled = true;
        Vector3 dir = holder.GetThrowDir();
        rb.AddForce(dir * holder.Power, ForceMode.Impulse);
        gameObject.SetLayerRecursively(0);
        holder = null;
        //the below is dumb but I don't feel like using on collision enter, feel free to try adding that
        if (health <= throwDmg) {
            readyToBreak = true;
        }
        this.DoAfterTime(() => TakeDamage(throwDmg), 3);
    }

    public bool CanBePickedUp(ICanHold h) {
        return curState.Grounded();
    }

    private void OnCollisionEnter(Collision other) {
        Monster m = other.collider.GetComponent<Monster>();
        if (m != null) {
            m.FurnitureContact(this);
        } else {
            SetState(new GroundedState(this));
        }
        if (_audio == null) { return; }
        if (!_audio.isPlaying && Time.timeSinceLevelLoad > 5) {
            _audio.PlayOneShot(thud);
            MakeDust(other.contacts[0].point);
        }
    }

    private void MakeDust(Vector3 point) {
        GameObject d = dustPool.FirstOrDefault(x => !x.gameObject.activeSelf);
        if (d == null) {
            d = Instantiate(dust);
            dustPool.Add(d);
        }
        d.SetActive(true);
        d.transform.position = point;
        this.DoAfterTime(() => d.gameObject.SetActive(false), 1);
    }

    public override void TurnOn() {

        Debug.Log("Calling Child script function 'On'");
        gameObject.GetComponent<Collider>().enabled = true;
        gameObject.GetComponentInChildren<Renderer>().enabled = true;
        readyToBreak = false;
        Debug.Log(readyToBreak);
        //Debug.Log(curState);
        //Debug.Log(heldLayer);

    }

    public void GetPossessed(Ghost g) {
        ghost = g;
        rb.velocity = Vector3.zero;
        rb.angularVelocity = Vector3.zero;
        gameObject.SetLayerRecursively(13);
        jumpTime = baseJumpTime;
        SetTarget(Player.singleton.gameObject);

    }

    public void SetTarget(GameObject g) {

        ghostTarget = g.transform;

    }

    public void UnPossess() {
        ghost = null;
    }

    public bool Possessed() {
        return ghost != null;
    }

    public bool Possessable() {
        return holder == null && possessable;
    }

    public void GhostUpdate() {
        jumpTime -= Time.deltaTime;
        if (jumpTime <= 0) {
            Jump(ghostTarget);
            jumpTime = baseJumpTime;
        }
    }

    private void Jump(Transform ghostTarget) {
        Vector3 t = ghostTarget.transform.position + new Vector3(UnityEngine.Random.Range(-2f, 2f), 0, UnityEngine.Random.Range(-2f, 2f));
        Vector3 dir = (ghostTarget.transform.position - transform.position + Vector3.up).normalized;
        rb.AddForce(dir * jumpForce);
    }

    void Update() {
        audioTimer += Time.deltaTime;
    }

    public override bool Valid(Player p) {
        return health > 0;
    }

    public override void Do(DoEvent de) {
        if (de.action == "move") {

        }
    }
}