using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : Interactable {

    bool locked = false;
    [SerializeField] List<NodePair> nodes = new List<NodePair>();
    // Start is called before the first frame update
    void Lock() {
        locked = true;
        foreach (NodePair n in nodes) {
            n.n1.RemoveNeighbor(n.n2);
        }
    }

    public override void Interact(Player p) {
        if (locked) {
            UnLock();
            locked = false;
        } else {
            Lock();
            locked = true;
        }
    }

    void UnLock() {
        locked = false;
        foreach (NodePair n in nodes) {
            n.n1.AddNeighbor(n.n2);
        }
    }

    [SerializeField]
    public struct NodePair {
        public Node n1, n2;
    }
}