using System.Collections.Generic;
using UnityEngine;

public class PathFinder {

	Node start, end;

	public struct NodeData {
		PathFinder p;
		public Node node;
		public Node parent;

		public NodeData(Node node, PathFinder p) : this() {
			this.node = node;
			this.p = p;
			this.g = 0;
			h = p.dist(node, p.end);
		}

		public NodeData(Node node, PathFinder p, float g) : this() {
			this.node = node;
			this.p = p;
			this.g = g;
			h = p.dist(node, p.end);
		}

		public float h;
		public float g;
		public float f => h + g;

	}

	Dictionary<Node, NodeData> nodeData;

	public PathFinder(Node s, Node e) {
		start = s;
		end = e;
		nodeData = new Dictionary<Node, NodeData>();
	}

	public List<Node> ShortestPath() {
		List<Node> open = start.neighbors;
		HashSet<Node> closed = new HashSet<Node>();
		List<Node> path = new List<Node>();
		nodeData.Add(start, new NodeData(start, this));

		while (open.Count > 0) {
			Node current = LowestFCost(open);
			open.Remove(current);
			closed.Add(current);

			if (current == end) {
				return CalculatePath();
			}

			foreach (Node neighbor in current.neighbors) {
				if (!nodeData.ContainsKey(neighbor)) {
					nodeData.Add(neighbor, new NodeData(neighbor, this));
				}
				if (closed.Contains(neighbor)) {
					continue;
				}

				float newCost = nodeData[neighbor].g + dist(current, neighbor);
				if (newCost < nodeData[neighbor].g || !open.Contains(neighbor)) {
					NodeData nd = nodeData[neighbor];
					nd.g = newCost;
					nd.h = dist(neighbor, end);
					nd.parent = current;
					nodeData[neighbor] = nd;

					if (!open.Contains(neighbor)) {
						open.Add(neighbor);
					}
				}
			}
		}
		Debug.Log("No path");
		return null;

	}

	Node LowestFCost(List<Node> nodes) {
		Node n = nodes[0];

		foreach (Node cur in nodes) {
			if (nodeData.ContainsKey(cur) && nodeData.ContainsKey(n)) {
				if (nodeData[cur].f < nodeData[n].f) {
					n = cur;
				}
			}
		}
		return n;
	}

	float dist(Node a, Node b) {
		if (a == null || b == null) {
			return Mathf.Infinity;
		}
		return Vector3.Distance(a.transform.position, b.transform.position);
	}

	List<Node> CalculatePath() {
		Node cur = end;
		List<Node> path = new List<Node>();
		while (cur != start && cur != null) {
			path.Add(cur);
			try {
				cur = nodeData[cur].parent;
			}
			catch{
				Debug.Log(cur);
				return null;
			}
		}
		path.Reverse();
		return path;
	}

}