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

    public Transform Hand => hand;

    public float Power => power;

    float startX;

    public IPickUpable CurHeld() {
        return held;
    }

    public override void SeeBuyer(Npc npc) {
        if (tentacle.transform.localPosition.x >= tentacleLength) {
            Debug.Log("see npc");
            DeadNpc d = npc.Die();
            d.GetPickedUp(this);
            PickUp(d);
        }

    }

    public override void FurnitureContact(Furniture furniture) {
        GetHit((int) furniture.weight);
        //Randomly grab it
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
        StartCoroutine(DelayThrow(10));
    }

    public void Release(IPickUpable pickUpable) {
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
        held.Release(this);
        Release(held);

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
        string arg = de.args[0];
        Room r;
        if (arg.Contains("|")) {
            string room = arg;
            room = arg.Split('|') [0] + arg.Split('|').Slice(1, -1).RandomItem();
            r = Room.GetRoom(room);
        } else {
            r = Room.GetRoom(de.args[0]);
        }
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
        string arg = de.args[0];
        MonsterSpawnPoint msp;
        if (arg.Contains("|")) {
            string spawn = arg;
            spawn = arg.Split('|') [0] + arg.Split('|').Slice(1, -1).RandomItem();
            msp = MonsterSpawnPoint.spawns[spawn];
        } else {
            msp = MonsterSpawnPoint.spawns[de.args[0]];
        }
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
}