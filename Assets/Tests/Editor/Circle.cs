using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Circle : MonoBehaviour
{
    [SerializeField] private int _radius;

 /*   
    public int Radius
    {
        set {_radius = value; }
        get { return _radius; }
    }
*/

    public Circle(int radius)
    {
        _radius = radius;
    }

    public Vector3 GetPositionOnBoundaryOfCircle(int degrees)
    {
        return new Vector3(CalculateXCoordinate(degrees), 0, CalculateYCoordinate(degrees));
    }

    private float CalculateXCoordinate(int degrees)
    {
        var x = _radius*Mathf.Cos(degrees*Mathf.Deg2Rad);
        if(Mathf.Abs(x) < 0.01f)
        {
            x = 0;
        }
        return x;
    }

    private float CalculateYCoordinate(int degrees)
    {
        var y = _radius * Mathf.Sin(degrees*Mathf.Deg2Rad);
        if(Mathf.Abs(y) < 0.01f)
        {
            y = 0;
        }
        return y;
    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
