using System.Collections.Generic;
using Cthulu;
using UnityEngine;

public class Room : MonoBehaviour {
    List<Furniture> furniture;

    [SerializeField] List<Node> nodes;

    void Start(){

    }

    public Node RandomNode(){
        return nodes.RandomItem();
    }
}