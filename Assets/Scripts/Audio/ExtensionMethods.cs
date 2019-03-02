using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Cthulu.Events;
using UnityEngine;

namespace Cthulu {

    public static class ExtensionMethods {

        public static Vector3 setX(this Vector3 v, float X) {

            return new Vector3(X, v.y, v.z);

        }
        public static T RandomItem<T>(this List<T> list, Predicate<T> condition) {
            List<T> temp = list.FindAll(condition);
            if (temp.Count == 0) { return default(T); }
            return temp[UnityEngine.Random.Range(0, list.Count)];

        }
        public static T RandomItem<T>(this List<T> list) {
            return list[UnityEngine.Random.Range(0, list.Count)];

        }
        public static T RandomItem<T>(this T[] array) {
            return array[UnityEngine.Random.Range(0, array.Length)];

        }
        public static T RandomItem<T>(this T[] array, Predicate<T> condition) {
            List<T> temp = array.ToList().FindAll(condition);
            if (temp.Count == 0) { return default(T); }
            return temp[UnityEngine.Random.Range(0, array.Length)];

        }
        public static Vector3 setY(this Vector3 v, float Y) {

            return new Vector3(v.x, Y, v.z);
        }
        public static void Next(this Enum e) {
            // Enum.GetValues(e);
        }

        public static bool AllSame<T>(this List<T> list, T val) //Can check for given value or any value
        {
            if (list == null) {
                return true;
            }
            if (list.Capacity < 1) //Should it return true for 0 or 1 item list?
            {
                return true;
            }
            foreach (T i in list) {
                if (!Equals(i, val)) {
                    return false;
                }
            }
            return true;
        }

        public static void SetAll<T>(this List<T> list, T val) {
            for (int i = 0; i < list.Capacity; i++) {
                list[i] = val;
            }
        }

        public static List<T> RemoveLast<T>(this List<T> list) {
            List<T> list2 = list;
            list2.RemoveAt(list2.Count - 1);
            return list2;
        }

        public static void ToLists<T, S>(this Dictionary<T, S> d, List<T> l1, List<S> l2) {
            l1 = new List<T>();
            l2 = new List<S>();
            foreach (KeyValuePair<T, S> pair in d) {
                l1.Add(pair.Key);
                l2.Add(pair.Value);
            }
        }
        public static bool FromLists<T, S>(this Dictionary<T, S> d, List<T> l1, List<S> l2) {
            if (l1.Count != l2.Count) {
                Debug.LogError("Error, both lists need to be the same length to convert to dictionary.\nList1 Count=" + l1.Count + " List2 Count=" + l2.Count);
                return false;
            }
            if (l1.Count != l1.Distinct().Count()) {
                Debug.LogError("Error, Can not create dictionary with duplicate keys ");
                return false;
            }
            d.Clear();
            for (int i = 0; i < l1.Count; i++) {
                d.Add(l1[i], l2[i]);
            }
            return true;
        }

        public static void SetName(this IManageable i) {
            GameObject g = i.obj;
            g.name = g.name + g.GetInstanceID();
            Transform t = g.transform;
            while (t != null) {
                t = t.parent;
                if (t != null) {
                    g.name = t.gameObject.name + "." + g.gameObject.name;
                }

            }

        }

        /// <summary>
        /// Call this from Awake()
        /// </summary>
        /// <param name="i"></param>
        public static void AddToManager(this IManageable i) {
            if (GameManager.Objects.ContainsKey(i.obj.name.ToLower())) {
                Debug.LogWarning(i.obj.name + " has the same name as another object in the scene");
            } else {
                i.obj.name = i.obj.name.ToLower();
                GameManager.Objects.Add(i.obj.name, i);
            }
        }

        public static T[] Slice<T>(this T[] source, int start, int end) {
            // Handles negative ends.
            if (end < 0) {
                end = source.Length + end + 1;
            }
            int len = end - start;

            // Return new array.
            T[] res = new T[len];
            for (int i = 0; i < len; i++) {
                res[i] = source[i + start];
            }
            return res;
        }

        public static string Print(this string[] a) {
            string s = "";
            for (int i = 0; i < a.Length; i++) {
                s = s + a[i] + " ";
            }
            return s;
        }

        public static void Use(this IPickUpable p, ICanHold holder) {
            p.Release(holder);
            holder.Release(p);

        }

        public static void SetLayerRecursively(this GameObject obj, int newLayer) {
            if (obj == null) {
                return;
            }
            if (obj.layer == 14) { //Minimap Layer
                return;
            }

            obj.layer = newLayer;

            foreach (Transform child in obj.transform) {
                if (null == child) {
                    continue;
                }
                SetLayerRecursively(child.gameObject, newLayer);
            }
        }

        public static void DoAfterTime(this MonoBehaviour control, Action coroutine, float time) {

            control.StartCoroutine(MakeInvokedCoroutine(coroutine, time));
        }

        public static void DoAfterTimeIf(this MonoBehaviour control, Action coroutine, float time, Func<bool> cond) {

            control.StartCoroutine(MakeInvokedCoroutine(coroutine, time, cond));
        }

        public static void InvokeRepeatingWhile(this MonoBehaviour control, Action coroutine, float time, Func<bool> cond) {

            control.StartCoroutine(MakeInvokedCoroutineRepeating(coroutine, time, cond));
        }

        public static void DoXTimes(this MonoBehaviour m, Action f, int amnt) {
            for (int i = 0; i < amnt; i++) {
                f();
            }
        }

        static IEnumerator MakeInvokedCoroutine(Action coroutine, float time) {
            yield return new WaitForSeconds(time);
            coroutine();
        }

        static IEnumerator MakeInvokedCoroutine(Action coroutine, float time, Func<bool> cond) {
            yield return new WaitForSeconds(time);
            if (cond()) {
                coroutine();
            }
        }

        static IEnumerator MakeInvokedCoroutineRepeating(Action coroutine, float time, Func<bool> cond) {
            while (cond()) {
                yield return new WaitForSeconds(time);
                coroutine();

            }
        }

    }
}