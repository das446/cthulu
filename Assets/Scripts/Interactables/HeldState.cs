internal class HeldState : FurnitureState {
    private ICanHold h;

    public HeldState(Furniture furniture, ICanHold h) : base(furniture) {
        this.furniture = furniture;
        this.h = h;
    }

    public override bool Held(){
        return true;
    }
}