using System.Collections;
using System.Collections.Generic;
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
		id = Nodes.Count;
		Nodes.Add(this);
		foreach (Node neighbor in neighbors) {
			if (!neighbor.neighbors.Contains(this)) {
				neighbor.neighbors.Add(this);
			}
			GameObject g = new GameObject();
			g.transform.parent = transform;
			if (draw) {
				LineRenderer lr = g.AddComponent<LineRenderer>();
				lr.SetPositions(new Vector3[] { transform.position, neighbor.transform.position });
				lr.startWidth = lineThickness;
				lr.endWidth = lineThickness;
			}

		}
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
}