using UnityEngine;
using System.Collections;
using cakeslice;

namespace cakeslice
{
    public class Rotate : MonoBehaviour
    {
        float timer;
        const float time = 1;
        [SerializeField] float speed = 20;

        // Use this for initialization
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
            transform.Rotate(Vector3.forward, Time.deltaTime * speed);

        }
    }
}