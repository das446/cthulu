public class GroundedState : FurnitureState {
    private Furniture furniture;


    public GroundedState(Furniture furniture) : base(furniture) {
        this.furniture = furniture;
    }
}