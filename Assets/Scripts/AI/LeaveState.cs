using System;

public class LeaveState : NpcState {

    Node exit;

    public LeaveState(Npc npc, Node exit) : base(npc) {
        this.exit = exit;
        npc.follower.SetPath(exit);
        PathFollower.ReachNode += ReachExit;
    }

    private void ReachExit(Npc npc, Node node) {
        if (node == exit && npc == this.npc) {
            npc.ExitHouse();
        }
    }

    public override void Enter() {

    }

    public override void OnInteract(Player p){

    }

    public override void Exit() {
        throw new System.NotImplementedException();
    }

    public override void StateUpdate() {

    }
}