public class DeadState : NpcState
{
    public DeadState(Npc npc) : base(npc)
    {
        Enter();
    }

    public override void FrameUpdate()
    {
        
    }

    public override void Enter()
    {
        //SetRagdoll
    }

    public override void Exit()
    {
        throw new System.NotImplementedException();
    }
}