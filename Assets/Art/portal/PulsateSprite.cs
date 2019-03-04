using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PulsateSprite : MonoBehaviour
{

    public float pulseMin = .8f;
    public float pulseMax = 1.2f;
    public float pulseTime = 2f;

    // Start is called before the first frame update
    void Start()
    {
        pulseMax = pulseMax - pulseMin;
    }

    // Update is called once per frame
    void Update()
    {
        transform.localScale = new Vector3(Mathf.PingPong(Time.time / pulseTime, pulseMax) + pulseMin, Mathf.PingPong(Time.time / pulseTime, pulseMax) + pulseMin, transform.localScale.z);
    }
}
