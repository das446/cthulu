using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu.Events {
    public class DoEvent {

        public string id;
        public string type;
        string name;
        public string[] args;

        public string action;
        public string var;

        public static DoEvent FromLine(string l) {
            string[] line = l.Split(' ');
            string id = line[0];
            string name = line[2];
            string f = line[3];
            string[] args = line.Slice(4, -1);
            return new DoEvent(id, name, f, args);

        }

        public DoEvent(string id, string name, string action, params string[] args) {
            this.id = id;
            this.name = name;
            this.action = action;
            this.args = args;
            this.var = "";
            if (this.name.Contains("=")) {
                string[] temp = this.name.Split('=');
                this.name = temp[0];
                this.var = temp[1];
            }
        }

        public string[] GetNames() {
            if (name.Contains("|")) {

                string[] options = name.Split('|');
                string objectName = options[0] + "." + (options.Slice(1, -1).RandomItem());
                if (var != "" && GameManager.Objects.ContainsKey(objectName)) {

                    GameManager.Variables.Set(objectName, var);

                    GameManager.Objects.Set(var, GameManager.Objects[objectName]);
                }
                return new string[] { objectName };

            } else if (name.Contains("&")) {

                string[] options = name.Split('&');
                List<string> names = new List<string>();
                for (int i = 1; i < options.Length; i++) {
                    names.Add(options[0] + "." + options[i]);
                }
                return names.ToArray();
            } else {
                return new string[] { name };
            }
        }

        public string Print() {
            return id + " " + name + " " + action + " " + args.Print();
        }

        public Dictionary<string, string> GetParamaters() {
            Dictionary<string, string> p = new Dictionary<string, string>();
            for (int i = 0; i < args.Length; i++) {
                if (args[i].Contains("=")) {
                    string[] s = args[i].Split('=');
                    p.Add(s[0], s[1]);
                }
            }
            return p;
        }

        public string GetParamater(string s) {
            Dictionary<string, string> p = GetParamaters();
            if (p.ContainsKey(s)) {
                return p[s];
            } else {
                return "";
            }
        }

    }
}