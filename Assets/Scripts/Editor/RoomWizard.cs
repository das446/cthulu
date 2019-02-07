using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class RoomWizard : EditorWindow {
    public Object wall;
    public Object wallDoor;
    public Object door;
    public Object floor;
    public float width;
    public float length;
    public string roomName;

    [MenuItem("Window/RoomMaker")]
    public static void ShowWindow() {
        EditorWindow.GetWindow(typeof(RoomWizard));
    }

    void OnGUI() {
        roomName = EditorGUILayout.TextField("Name", roomName);
        wall = EditorGUILayout.ObjectField("Wall", wall, typeof(Object), true);
        wallDoor = EditorGUILayout.ObjectField("Wall With Door", wallDoor, typeof(Object), true);
        floor = EditorGUILayout.ObjectField("Floor", floor, typeof(Object), true);
        door = EditorGUILayout.ObjectField("Door", door, typeof(Object), true);
        width = EditorGUILayout.FloatField("Width", width);
        length = EditorGUILayout.FloatField("Length", length);

        bool makeRoomPressed = GUILayout.Button("Make Room");
        if (makeRoomPressed) {
            GameObject room = MakeRoom();
            Selection.activeGameObject = room;
            SceneView.FrameLastActiveSceneView();
        }

    }

    private GameObject MakeRoom() {
        Vector3 origin = Vector3.up * 50;
        GameObject room = new GameObject(roomName);
        //origin is bottom left

        GameObject southWall = new GameObject("South");
        southWall.transform.parent = room.transform;
        for (int x = 0; x < width; x++) {
            GameObject wall = (GameObject) Instantiate(this.wall, origin + Vector3.right * x, Quaternion.identity, southWall.transform);

        }

        GameObject northWall = new GameObject("North");
        northWall.transform.parent = room.transform;
        for (int x = 0; x < width; x++) {
            // - x is there because the wall rotates around the edge
            Vector3 pos = origin + Vector3.right * (x - 1) + Vector3.forward * length;
            GameObject wall = (GameObject) Instantiate(this.wall, pos, Quaternion.identity, northWall.transform);
            wall.transform.Rotate(0, 180, 0);
        }

        GameObject westWall = new GameObject("West");
        westWall.transform.parent = room.transform;
        for (int y = 0; y < length; y++) {
            GameObject wall = (GameObject) Instantiate(this.wall, origin + Vector3.forward * y + Vector3.left, Quaternion.identity, westWall.transform);
            wall.transform.Rotate(0, 90, 0);
        }

        GameObject eastWall = new GameObject("East");
        eastWall.transform.parent = room.transform;
        for (int y = 0; y < length; y++) {
            Vector3 pos = origin + Vector3.forward * (y + 1) + Vector3.right * (width - 1);
            GameObject wall = (GameObject) Instantiate(this.wall, pos, Quaternion.identity, eastWall.transform);
            wall.transform.Rotate(0, -90, 0);
        }
        return room;
    }
}