using System;

public abstract class FurnitureState {

    protected Furniture furniture;

    protected FurnitureState(Furniture furniture)
    {
        this.furniture = furniture;
    }

    public bool Held() {
       return false;
    }

    public virtual bool InAir(){
        return false;
    }

    public virtual bool Grounded(){
        return false;
    }
}