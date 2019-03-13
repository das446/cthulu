using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu;
using UnityEngine;

public class Node : MonoBehaviour {

	[SerializeField] List<Node> neighbors;
	[SerializeField] Node prefab;
	[SerializeField] bool draw = false;
	public static List<Node> Nodes = new List<Node>();
	[SerializeField] float lineThickness;
	public int id;

	public float interestMultiplier = 1;

	public List<Node> Neighbors { get { return new List<Node>(neighbors); } }

	// Use this for initialization
	public void Init() {
		if (!name.StartsWith("node.")) {
			name = "node." + name;
		}
		name = name.ToLower();
		id = Nodes.Count;
		Nodes.Add(this);
		foreach (Node neighbor in neighbors) {
			if(neighbor==null){}
			else if(neighbor.neighbors==null){

			}
			else if (!neighbor.neighbors.Contains(this)) {
				neighbor.neighbors.Add(this);
			}
			if (draw) {
				DrawNeighbor(neighbor);
			}

		}
	}

	private void DrawNeighbor(Node neighbor) {
		if(neighbor ==null){
			return;
		}
		GameObject g = new GameObject();
		g.transform.parent = transform;
		LineRenderer lr = g.AddComponent<LineRenderer>();
		lr.SetPositions(new Vector3[] { transform.position, neighbor.transform.position });
		lr.startWidth = lineThickness;
		lr.endWidth = lineThickness;
	}

	void Start() {
		Init();
	}

	public void AddNeighbor(Node n) {
		if (!neighbors.Contains(n)) {
			neighbors.Add(n);
		}
		if (!n.neighbors.Contains(this)) {
			n.neighbors.Add(this);
		}
	}

	public void RemoveNeighbor(Node n) {
		if (neighbors.Contains(n)) {
			neighbors.Remove(n);
		}
		if (n.neighbors.Contains(this)) {
			n.neighbors.Remove(this);
		}
	}

	public Node RandomNeighbor() {
		return neighbors.RandomItem();
	}

	public Node RandomNeighbor(Node exclude) {
		return neighbors.RandomItem(x => x != exclude);
	}

	public Node RandomUnblockedNeighbor() {
		return neighbors.RandomItem(x => !x.Blocked(this));
	}

	public static Node Get(string n) {
		try {
			return Nodes.Where(x => x.name == n.ToLower()).First();
		} catch {
			Debug.LogError("No node named " + n.ToLower());
			return null;
		}
	}

    public static Node ClosestUnblockedNode(Vector3 v)
    {
        if (Node.Nodes.Count == 0) {
            Debug.Log("Node list empty");
            return null;
        }
        float dis = Mathf.Infinity;
        Node closest = Node.Nodes[0];
        for (int i = 1; i < Node.Nodes.Count; i++) {
			
            float d = Vector3.Distance(v, Node.Nodes[i].transform.position);
            if (d < dis) {
                closest = Node.Nodes[i];
                dis = d;
            }
        }
        return closest;
    }

	public bool Blocked(Node n, out float dist){
		dist = Vector3.Distance(transform.position, n.transform.position);
		Vector3 dir = n.transform.position - transform.position;
		if (Physics.Raycast(transform.position, dir, dist)) {
			return true;
		}
		else {
			return false;
		}
	}

	public bool Blocked(Node n){
		float dist = Vector3.Distance(transform.position, n.transform.position);
		Vector3 dir = n.transform.position - transform.position;
		if (Physics.Raycast(transform.position, dir, dist)) {
			return true;
		}
		else {
			return false;
		}
	}
}