using System.Collections;
using System.Collections.Generic;
using Cthulu.Events;
using UnityEngine;
using UnityEngine.UI;

public class ChattingState : NpcState
{
    float chatTime;

    float chatTimer;

    Player player;

    Image visualTimer;
    
    NpcState prevState;

    public ChattingState(Npc npc, float chatTime, Player player, Image timer, NpcState state) : base(npc)
    {
        this.npc = npc;
        this.chatTime = chatTime;
        chatTimer = chatTime;
        this.player = player;
        visualTimer = timer;
        prevState = state;
        Enter();

        npc.ResetAnimParams();
    }

    public ChattingState(Npc npc, Player player, Image timer, NpcState state) : base(npc)
    {
        this.npc = npc;
        this.chatTime = 3;
        chatTimer = chatTime;
        this.player = player;
        visualTimer = timer;
        prevState = state;
        Enter();

        npc.ResetAnimParams();
    }

    public override void StateUpdate()
    {
        chatTimer -= Time.deltaTime;
        visualTimer.fillAmount = chatTimer/chatTime;

        if (chatTimer <= 0)
        {
            npc.interest += 10;
            npc.Unlock();
            player.Unlock();
            npc.SetState(prevState);
        }
    }

    public override void Enter()
    {
        GameManager.When(npc.name,"chat");
        visualTimer.gameObject.SetActive(true);
    }

    public override void Exit()
    {
        visualTimer.gameObject.SetActive(false);
    }
}
