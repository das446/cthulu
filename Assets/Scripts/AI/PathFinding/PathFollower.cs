using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PathFollower : MonoBehaviour {

    public List<Node> path = new List<Node>();
    public Node start, end;
    public float speed;
    public float minDist;
    public bool moving;
    List<Node> nodes = new List<Node>();
    [SerializeField] Npc npc;

    public static event Action<Npc, Node> ReachNode;

    // Update is called once per frame

    void Start() {
        if (start != null && end != null) {
            SetPath(start, end);
        }
        npc = GetComponent<Npc>();
    }

    void Update() {
        if (path == null | path.Count == 0) {
            moving = false;
            return;
        }
        Vector3 target = path[0].transform.position;
        target.y = transform.position.y;
        transform.position = Vector3.MoveTowards(transform.position, target, Time.deltaTime * speed);
        transform.LookAt(target);
        if (Vector3.Distance(transform.position, target) < minDist) {
            if (ReachNode != null) {
                ReachNode(npc, path[0]);
            }
            path.RemoveAt(0);
            if (path.Count == 0) {
                moving = false;
                start = null;
            }
        }

    }

    public void SetPath(Node f) {
        SetPath(ClosestNode(), f);
    }

    public void SetPath(Vector3 f) {
        SetPath(ClosestNode(), ClosestNode(f));
    }

    public void SetPath(Node f, List<Node> avoid) {
        SetPath(ClosestNode(), f, avoid);
    }

    public void SetPath(Node s, Node f) {
        start = s;
        end = f;
        path = new PathFinder(start, end).ShortestPath();
        if (path.Count > 0) {
            moving = true;
        }
    }

    public void SetPath(Node s, Node f, List<Node> avoid) {
        start = s;
        end = f;
        path = new PathFinder(start, end, avoid).ShortestPath();
        if (path.Count > 0) {
            moving = true;
        }
    }

    public Node ClosestNode() {
        return ClosestNode(transform.position);
    }

    public Node ClosestNode(Vector3 v) {
        return Node.ClosestNode(v);
    }

    Node FarthestNode() {
        if (Node.Nodes.Count == 0) {
            Debug.Log("Node list empty");
            return null;
        }
        float dis = 0;
        Node farthest = Node.Nodes[0];
        for (int i = 1; i < Node.Nodes.Count; i++) {
            float d = Vector3.Distance(transform.position, Node.Nodes[i].transform.position);
            if (d > dis) {
                farthest = Node.Nodes[i];
                dis = d;
            }
        }
        return farthest;
    }

    public void Stop() {
        path = new List<Node>();
    }
}