using UnityEditor;
using UnityEngine;
using System.Collections;
using System;
using System.IO;
using System.Text;

// Pop this baby in Assets/Editor, or any folder called Editor.
public class CustomCreateScript
{
    private const string CLASS_KEYWORD = "class";
    private const string NAMESPACE_KEYWORD = "namespace";

    [MenuItem("Assets/Create/C# Script/With Same Namespace", priority = 0)]
    private static void CreateScriptWithSameNamespaceAsSelection()
    {
        string filePath = AssetDatabase.GetAssetPath(Selection.activeObject);
        string dirPath = filePath.Substring(0, filePath.LastIndexOf("/") + 1);

        string nameSpace = GetDefinition(filePath, NAMESPACE_KEYWORD, "{");
        CreateScript(dirPath, "NewScript", "MonoBehaviour", nameSpace);
    }

    [MenuItem("Assets/Create/C# Script/That Inherits From", priority = 0)]
    private static void CreateScriptThatInheritsFromSelection()
    {
        string filePath = AssetDatabase.GetAssetPath(Selection.activeObject);
        string dirPath = filePath.Substring(0, filePath.LastIndexOf("/") + 1);

        string nameSpace = GetDefinition(filePath, NAMESPACE_KEYWORD, "{");
        string parentClass = GetDefinition(filePath, CLASS_KEYWORD, ":");
        CreateScript(dirPath, "NewScript", parentClass, nameSpace);
    }

    private static void CreateScript(string basePath, string className, string parentClass, string nameSpace)
    {
        string path = basePath + className + ".cs";

        if (File.Exists(path) == false)
        {
            using (StreamWriter outfile = new StreamWriter(path))
            {
                outfile.WriteLine("using UnityEngine;");
                outfile.WriteLine("using System.Collections;");
                outfile.WriteLine("using System.Collections.Generic;");
                outfile.WriteLine("");

                if (!string.IsNullOrEmpty(nameSpace))
                {
                    outfile.WriteLine("namespace " + nameSpace);
                    outfile.WriteLine("{");
                }

                string leadingTab = string.IsNullOrEmpty(nameSpace) ? "" : "\t";

                outfile.WriteLine(leadingTab + "public class " + className + " : " + parentClass);
                outfile.WriteLine(leadingTab + "{");
                outfile.WriteLine(leadingTab + "\t");
                outfile.WriteLine(leadingTab + "}");

                if (!string.IsNullOrEmpty(nameSpace))
                {
                    outfile.WriteLine("}");
                }
            }
        }

        AssetDatabase.Refresh();
    }

    private static string GetDefinition(string path, string keyword, string delimiter)
    {
        if (path.EndsWith(".cs"))
        {
            var reader = new StreamReader(path);
            string fileContents = reader.ReadToEnd();
            reader.Close();

            if (fileContents.Contains(keyword))
            {
                int startIndex = fileContents.IndexOf(keyword) + keyword.Length;
                int endIndex = fileContents.IndexOf(delimiter, startIndex);

                string definition = fileContents.Substring(startIndex, endIndex - startIndex);
                definition = definition.Trim();

                return definition;
            }
        }
        return "";
    }
}
