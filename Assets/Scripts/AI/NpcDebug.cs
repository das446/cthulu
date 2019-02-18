using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class NpcDebug : MonoBehaviour
{
    private Npc npc;
    private Canvas myCanvas;
    public string fuck;

    private TextMesh t;
    private GameObject text;
    void Start(){
            npc = GetComponent<Npc>();
            text = new GameObject();
            t = text.AddComponent<TextMesh>();
            t.fontSize = 10;
            t.characterSize = 0.1f;
            text.transform.parent = this.transform;
            text.transform.localPosition = new Vector3(0,this.transform.position.y+2,0);
        //text.gameObject.transform.parent = this.transform.parent;

        
    }
    void Update()
    {
        transform.rotation = Camera.main.transform.rotation;

        /* 
        Room rm = npc.CurRoom;
        string rname = rm.name;
        */
        string buying = npc.isBuying ? "buying" : "";
        string sared = npc.isScared ? "Scaring" : "";
        string run = npc.isRunning ? "runing" : "";
        //Debug.Log("runnning");
        t.text = "Buying: "+buying+ "\n"
                + "Sacred: "+ sared + "\n"
                +  "Running: " + run + "\n";
        
    }






}