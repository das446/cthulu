using System.Collections.Generic;
using UnityEngine;

public class PathFinder {

	Node start, end;

	public List<Node> avoid = new List<Node>();
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

	Dictionary<int, NodeData> nodeData;

	public PathFinder(Node s, Node e) {
		start = s;
		end = e;
		nodeData = new Dictionary<int, NodeData>();
	}

	public PathFinder(Node start, Node end, List<Node> avoid) : this(start, end) {
		this.avoid = avoid;
	}

	public List<Node> ShortestPath() {

		if (start == null | end == null) {
			return new List<Node>() { start };
		}

		if (start.id == end.id) {
			return new List<Node>() { start };
		}

		List<Node> open = start.Neighbors;
		HashSet<Node> closed = new HashSet<Node>();
		List<Node> path = new List<Node>();
		for (int i = 0; i < Node.Nodes.Count; i++) {
			nodeData.Add(i, new NodeData(Node.Nodes[i], this));
		}

		while (open.Count > 0) {
			Node current = LowestFCost(open);
			open.Remove(current);
			closed.Add(current);

			if (current == end) {
				return CalculatePath();
			}

			foreach (Node neighbor in current.Neighbors) {
				if (!nodeData.ContainsKey(neighbor.id)) {
					nodeData.Add(neighbor.id, new NodeData(neighbor, this));
				}
				if (closed.Contains(neighbor)) {
					continue;
				}

				float newCost = nodeData[neighbor.id].g + dist(current, neighbor);
				if (newCost < nodeData[neighbor.id].g || !open.Contains(neighbor)) {
					NodeData nd = nodeData[neighbor.id];
					nd.g = newCost;
					nd.h = dist(neighbor, end);
					nd.parent = current;
					nodeData[neighbor.id] = nd;

					if (!open.Contains(neighbor)) {
						open.Add(neighbor);
					}
				}
			}
		}
		Debug.Log("No path");
		return new List<Node>();

	}

	Node LowestFCost(List<Node> nodes) {
		Node n = nodes[0];

		foreach (Node cur in nodes) {
			if (nodeData.ContainsKey(cur.id) && nodeData.ContainsKey(n.id)) {
				if (nodeData[cur.id].f < nodeData[n.id].f) {
					n = cur;
				}
			}
		}
		return n;
	}

	float dist(Node a, Node b) {
		if (avoid.Contains(b)) {
			return Mathf.Infinity;
		}
		float dist;

		if (a.Blocked(b, out dist)) {
			return Mathf.Infinity;
		}
		return dist;
	}

	List<Node> CalculatePath() {
		Node cur = end;
		List<Node> path = new List<Node>();
		while (cur != start && cur != null) {
			path.Add(cur);
			cur = nodeData[cur.id].parent;
		}
		path.Reverse();
		return path;
	}

}