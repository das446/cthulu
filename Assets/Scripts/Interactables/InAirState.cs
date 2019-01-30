using UnityEngine;

public class InAirState : FurnitureState {

    ICanHold lastHolder;

    public InAirState(Furniture furniture, ICanHold lastHolder) : base(furniture) {
        this.furniture = furniture;
    }

    /// <summary>
    /// OnCollisionEnter is called when this collider/rigidbody has begun
    /// touching another rigidbody/collider.
    /// </summary>
    /// <param name="other">The Collision data associated with this collision.</param>
    void OnCollisionEnter(Collision other) {
        Monster m = other.gameObject.GetComponent<Monster>();
        if (m != null) {
            m.FurnitureContact(furniture);
        } else {
            furniture.SetState(new GroundedState(furniture));
            furniture.TakeDamage(1);
        }

        
    }
}