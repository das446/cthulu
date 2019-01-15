using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PathFollower : MonoBehaviour {

	public List<Node> path;
	public Node start, end;
	public float speed;
	public float minDist;
	public bool moving;
	List<Node> nodes = new List<Node>();

	// Update is called once per frame
	void Update() {
		if (Input.GetKeyDown(KeyCode.Space)) {
			if (start == null) {
				start = ClosestNode();
			}
			if (end == null) {
				end = FarthestNode();
			}
			path = new PathFinder(start, end).ShortestPath();
			moving = true;
		}
		if (path == null) { return; }
		if (path.Count == 0) { return; }
		Vector3 target = path[0].transform.position;
		target.y = transform.position.y;
		transform.position = Vector3.MoveTowards(transform.position, target, Time.deltaTime * speed);
		transform.LookAt(target);
		if (Vector3.Distance(transform.position, target) < minDist) {
			path.RemoveAt(0);
			if (path.Count == 0) {
				moving = false;
				start = null;
				end = null;
			}
		}

	}

	Node ClosestNode() {
		if (Node.Nodes.Count == 0) {
			Debug.Log("Node list empty");
			return null;
		}
		float dis = Mathf.Infinity;
		Node closest = Node.Nodes[0];
		for (int i = 1; i < Node.Nodes.Count; i++) {
			float d = Vector3.Distance(transform.position, Node.Nodes[i].transform.position);
			if (d < dis) {
				closest = Node.Nodes[i];
				dis = d;
			}
		}
		return closest;
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
}