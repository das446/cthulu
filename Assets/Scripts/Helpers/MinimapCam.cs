using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinimapCam : MonoBehaviour {
    [SerializeField] GameObject target;
    [SerializeField] bool is_rotate;

    void Start(){
        is_rotate = false;
    }
    void Update() {
        RotateMap(is_rotate);
    }

    private void RotateMap(bool r = false){
        if(r){
            gameObject.transform.rotation =  Quaternion.Euler(gameObject.transform.rotation.eulerAngles.x,target.transform.rotation.eulerAngles.y,target.transform.rotation.eulerAngles.z);
        }
        Vector3 v = gameObject.transform.position;
        v.x = target.transform.position.x;
        v.z = target.transform.position.z;
        transform.position = v;
    }
    public void SetRotate(bool r){
        is_rotate = r;
    }
    

}