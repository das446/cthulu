using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class NpcState : ScriptableObject {
    public abstract void Update(Npc npc);

    public abstract void Enter();

    public abstract void Exit();
}