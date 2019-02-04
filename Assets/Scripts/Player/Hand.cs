using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hand : MonoBehaviour
{
    public Player p;
    public Transform orignalPos;

    Furniture f;

    void Start()
    {
        
    }

    Vector3 preloc = Vector3.zero;
    void Update()
    {
        f = p.curItem;
        if (f != null)
        {
        if (f.GetComponent<HeavyFurniture>() != null)
        {
        Vector3 deltaPos = (transform.position - preloc) / Time.deltaTime;
        //Debug.Log(deltaPos.normalized);
        //transform.position = deltaPos.normalized + p.transform.position;  
            if (Input.GetKey(KeyCode.W))
            {
                transform.position =  p.transform.position + transform.forward*2;
            }
            else if (Input.GetKey(KeyCode.S))
            {
                transform.position =  p.transform.position - transform.forward*2;
            }
            else if (Input.GetKey(KeyCode.A))
            {
                transform.position =  p.transform.position - transform.right*2;
            }
            else if (Input.GetKey(KeyCode.D))
            {
                transform.position =  p.transform.position + transform.right*2;
            }
            else if (deltaPos != Vector3.zero)
            {
                transform.position = orignalPos.position;
            }
        
        
        }
        }
        else
        {
            transform.position = orignalPos.position; 
        }
        preloc = transform.position;

    }
}
