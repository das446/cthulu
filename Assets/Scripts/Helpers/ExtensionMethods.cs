using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class ExtensionMethods {

    public static Vector3 ToV3(this Vector2 v) {
        return new Vector3(v.x, v.y, 0);
    }

    public static Vector3 ToV3OnY(this Vector2 v) {
        return new Vector3(v.x, 0, v.y);
    }

    public static Vector2 ToV2(this Vector3 v) {
        return new Vector2(v.x, v.y);
    }

    public static List<T> ToList<T>(this T[, ] array) {
        int width = array.GetLength(0);
        int height = array.GetLength(1);
        List<T> ret = new List<T>(width * height);
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                ret.Add(array[i, j]);
            }
        }
        return ret;
    }

    public static void Set<S, T>(this Dictionary<S, T> d, S key, T val) {
        if (d.ContainsKey(key)) {
            d[key] = val;
        } else {
            d.Add(key, val);
        }
    }

}