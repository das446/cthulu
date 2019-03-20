using System.Collections;
using System.Collections.Generic;
using Cthulu;
using Cthulu.Events;
using UnityEngine;

public class PathDrawer : MonoBehaviour, IManageable {

    List<LineRenderer> lines = new List<LineRenderer>();
    public Material material;

    [SerializeField] List<Node> path;

    [SerializeField] Node start, end;

    public GameObject obj => gameObject;

    void Awake() {
        this.AddToManager();
    }

    public void Set(Node start, Node end) {
        ClearLines();

        path = new PathFinder(start, end).ShortestPath();

        for (int i = 0; i < path.Count - 1; i++) {
            LineRenderer lr;
            if (i >= lines.Count) {
                GameObject g = new GameObject();
                g.transform.parent = transform;
                lr = g.AddComponent<LineRenderer>();
                lines.Add(lr);
            } else {
                lr = lines[i];
                lr.enabled = true;
            }
            lr.SetPositions(new Vector3[] { path[i].transform.position, path[i + 1].transform.position });
            lr.material = material;
        }
    }

    public void ClearLines() {
        for (int i = 0; i < lines.Count; i++) {
            lines[i].enabled = false;
        }
    }

    public void Do(DoEvent de) {
        if (de.action == "clear") {
            ClearLines();
        } else if (de.action == "draw") {
            string node = de.args[0];
            Node start = Node.ClosestUnblockedNode(Player.singleton.transform.position);
            Node end = Node.Get(de.args[0]);
            Set(start, end);
        }

    }
}