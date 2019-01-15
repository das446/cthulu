using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Node : MonoBehaviour {

	private List<Node> neighbors= new List<Node>();
	[SerializeField] Node prefab;
	[SerializeField] bool draw = false;
	public static List<Node> Nodes = new List<Node>();
	[SerializeField] float lineThickness;

	public List<Node> Neighbors { get { return new List<Node>(neighbors); } }

	// Use this for initialization
	public void Init() {
		Nodes.Add(this);
		foreach (Node neighbor in Neighbors) {
			if (!neighbor.Neighbors.Contains(this)) {
				neighbor.Neighbors.Add(this);
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
		if (!Neighbors.Contains(n)) {
			Neighbors.Add(n);
		}
		if (!n.Neighbors.Contains(this)) {
			n.Neighbors.Add(this);
		}
	}

	public void RemoveNeighbor(Node n) {
		if (Neighbors.Contains(n)) {
			Neighbors.Remove(n);
		}
		if (n.Neighbors.Contains(this)) {
			n.Neighbors.Remove(this);
		}
	}
}