using System;
using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class Tentacle : Monster, ICanHold {

    IPickUpable held;
    [SerializeField] float range;
    [SerializeField] BoxCollider hitbox;
    [SerializeField] Transform hand;
    [SerializeField] float power;
    float tentacleLength = 2;
    [SerializeField] float speed;

    public GameObject tentacle;
    public GameObject deathnoise;

    public Transform Hand => hand;

    public float Power => power;

    float startX;

    //
    int iniHpRef;

    int changeInHp;
    Color baseColor;

    float tintCounter;
    //

    public IPickUpable CurHeld() {
        return held;
    }

    public override void SeeBuyer(Npc npc) {

        Debug.Log("see npc");
        DeadNpc d = npc.Die();
        d.GetPickedUp(this);
        PickUp(d);

    }

    void Update() {

        if (held != null) {
            held.obj.transform.position = hand.transform.position;
        }

        if (changeInHp != hp) {
            changeInHp = hp;
            Tintred();
        }

        if (tintCounter <= 0) {
            ResetColor();
        } else {
            tintCounter -= Time.deltaTime;
        }

    }

    public override void FurnitureContact(Furniture furniture) {
        IPickUpable ipu = furniture.GetComponent<IPickUpable>();
        if (ipu == held && ipu != null) {
            return;
        }
        GetHit((int) furniture.weight);
        if (UnityEngine.Random.Range(0, 5) == 1 && held == null) {
            if (ipu != null) {
                PickUp(ipu);
                ipu.GetPickedUp(this);
                if (gameObject.activeSelf) {
                    StartCoroutine(DelayThrow(6));
                }
            }
        }
    }

    public Vector3 GetThrowDir() {
        //throw at NPC or player
        float x = UnityEngine.Random.Range(-1f, 1f);
        return (transform.right * x) + (transform.forward * power);
    }

    void UpdateHitbox() {
        float visible = tentacleLength + tentacle.transform.localPosition.x;
        Vector3 center = hitbox.center;
        Vector3 bounds = hitbox.size;
        center.x = visible / 2;
        bounds.x = visible;
        bounds.z = range;
        bounds.y = range;
        hitbox.center = center;
        hitbox.size = bounds;

    }

    public void PickUp(IPickUpable pickUpable) {
        held = pickUpable;
        held.obj.transform.position = hand.transform.position;
        if (gameObject.activeSelf) {
            StartCoroutine(DelayThrow(10));
        }
    }

    public void Release(IPickUpable pickUpable) {
        held.obj.transform.position = transform.position + transform.forward * 3;
        held.obj.transform.parent = null;
        held.obj.GetComponent<Rigidbody>().AddForce(GetThrowDir());
        held = null;
    }

    void OnTriggerEnter(Collider other) {
        // Npc npc = other.GetComponent<Npc>();
        // if (npc != null) {
        //     PickUp(npc);
        //     StartCoroutine(DelayThrow(10));
        // }
        Debug.Log("Hit something");
    }

    IEnumerator DelayThrow(float delay) {
        yield return new WaitForSeconds(delay);
        if (held != null) {
            held.Release(this);
            Release(held);
        }
    }

    public override void Do(DoEvent de) {
        if (de.action == "spawn") {
            if (de.args[0].StartsWith("room.")) {
                SpawnInRoom(de);
            } else if (de.args[0].StartsWith("spawn.")) {
                SpawnAtPoint(de);
            }

        }
    }

    private void SpawnInRoom(DoEvent de) {
        string arg = de.GetArg(0);
        Room r;
        r = Room.GetRoom(arg);
        MonsterSpawnPoint m = r.spawnPoints.RandomItem();
        if (m == null) {
            Debug.LogError(r.name + " has no spawn points");
            return;
        }
        Transform t = m.transform;
        transform.position = t.position;
        transform.rotation = t.rotation;
        OnSpawn();
    }

    private void SpawnAtPoint(DoEvent de) {
        MonsterSpawnPoint msp;
        msp = MonsterSpawnPoint.spawns[de.GetArg(0)];

        Transform t = msp.transform;
        transform.position = t.position;
        transform.rotation = t.rotation;
        OnSpawn();
    }

    public override void Die() {
        base.Die();
        Vector3 v = tentacle.transform.localPosition;
        v.x = -tentacleLength;
        tentacle.transform.localPosition = v;
        StopAllCoroutines();
    }

    public override void OnSpawn() {
        base.OnSpawn();
        iniHpRef = hp;
        changeInHp = hp;
        PrepBaseColor();
        // StartCoroutine(MoveOut());
    }

    private IEnumerator MoveOut() {
        Debug.Log("MoveOut");
        WaitForEndOfFrame f = new WaitForEndOfFrame();
        while (tentacle.transform.localPosition.x < tentacleLength) {
            Vector3 v = tentacle.transform.localPosition;
            v.x += Time.deltaTime * speed;
            tentacle.transform.localPosition = v;
            UpdateHitbox();
            yield return f;
        }
    }

    void Tintred() {
        tintCounter = .25f;

        Renderer color = GetComponentInChildren<Renderer>();

        Color _color = color.material.GetColor("_Color");

        Color c = Color.Lerp(Color.red, _color, hp / iniHpRef); // interpolate between the two colors based on the difference between the vectors.

        color.material.SetColor("_Color", c);
    }

    void ResetColor() {
        Renderer color = GetComponentInChildren<Renderer>();
        color.material.SetColor("_Color", baseColor);
    }

    void PrepBaseColor() {
        Renderer color = GetComponentInChildren<Renderer>();
        Color _color = color.material.GetColor("_Color");
        baseColor = _color;
    }

}