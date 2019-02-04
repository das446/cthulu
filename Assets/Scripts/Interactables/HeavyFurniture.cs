using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeavyFurniture : Furniture {
    // Start is called before the first frame update
    [SerializeField] Joint joint;

    public  Rigidbody restReference;

    public Player p;

    public float rateOfRotate;
    
    bool pickedup;
    private Vector3 rot;
    private Vector3 antiRot;
    void  Start()
    {
        GetComponent<Rigidbody>().useGravity = true;
        pickedup = false;
        rot = new Vector3 (0,rateOfRotate,0);
        
        antiRot = new Vector3 (0,-rateOfRotate,0);

    }
   
    void FixedUpdate() {
        
        
        /// Force heavy objects to stick to the ground
       // if (Physics.Raycast(transform.position, -Vector3.up, GetComponent<Collider>().bounds.extents.y + 0.1f)) 
       // {
       //  GetComponent<Rigidbody>().MovePosition(new Vector3 (transform.position.x,transform.position.y-.1f,transform.position.z));
         
       // }

    if (pickedup)
    {
        
        
        if ( Input.GetAxis("Mouse ScrollWheel") > 0f)
        {
            
            GetComponent<Rigidbody>().AddTorque(rot,ForceMode.VelocityChange);
        }
        else if ( Input.GetAxis("Mouse ScrollWheel") < 0f)
        {
           
            GetComponent<Rigidbody>().AddTorque(antiRot,ForceMode.VelocityChange);
        }
    }

    }

    public override void Interact(Player p) {
        if (p.CurFurniture() == null) {
            GetPickedUp(p);
        }
    }

    public void Drag(Vector3 dir) {

    }

    public override void Release(ICanHold h) {
       
        base.Release(h);
        joint.connectedBody = restReference;
         p.curItem = null;
         pickedup = false;
         
    }

    void GetPickedUp(ICanHold h) {
        h.PickUp(this);
        joint.connectedBody = h.Hand.GetComponent<Rigidbody>();
        pickedup = true;
    }

    

}