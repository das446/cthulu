using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using Random = System.Random;

public class MonsterSpawnController : MonoBehaviour {

    [SerializeField] List<Room> rooms;
    [SerializeField] List<Monster> monsters;
    [SerializeField] int difficulty;
    [SerializeField] float spawnRate;
    [SerializeField] private Object _enemyPrefab;
    [SerializeField] private float _spawnRate;
    [SerializeField] private int _radius;

    

    float nextSpawn;
    private Random _random;
    private float _timeSinceLastSpawn;
    private Circle _circle;
    
    public void Construct(Object enemyPrefab, float spawnRate, int radius)
    {
        _enemyPrefab = enemyPrefab;
        _spawnRate = spawnRate;
        //_radius = radius;
        _circle.Radius = radius;
    }

    

    // Start is called before the first frame update
    void Start() 
    {

    }

    // Update is called once per frame
    void Update() 
    {
        nextSpawn -= Time.deltaTime;
        if (nextSpawn <= 0)
         {
            //SpawnMonster(,);
        }

        if(_circle == null)
        {
            _circle = new Circle(_radius);
        }

        if(_random == null)
        {
            _random = new Random();
        }

        if(_timeSinceLastSpawn >= -spawnRate)
        {
            var enemy = PrefabUtility.InstantiatePrefab(_enemyPrefab) as GameObject;
            var degrees = _random.Next(0,361);
            //var x = _radius*Mathf.Cos(degrees*Mathf.Deg2Rad);
            float x = CalculateXCoordinate(degrees);
            float y = CalculateYCoordinate(degrees);
            if(Mathf.Abs(x) < 0.01f)
            {
                x = 0;
            }

            //var y = _radius*Mathf.Sin(degrees*Mathf.Deg2Rad);
            if(Mathf.Abs(y) < 0.01f)
            {
                y = 0;
            }

            //enemy.transform.position = new Vector3(x,0,y);
            enemy.transform.position = GetPositionOnBoundaryOfCircle(degrees);
            _timeSinceLastSpawn = 0;
        }
        _timeSinceLastSpawn += Time.deltaTime;
    }

    private Vector3 GetPositionOnBoundaryOfCircle(int degrees)
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
        var y = _radius*Mathf.Sin(degrees*Mathf.Deg2Rad);
        if(Mathf.Abs(y) < 0.01f)
        {
            y = 0;
        }
        return y;
    }

    public void SpawnMonster(Monster m, MonsterSpawnPoint p) {

    }

    public void SpawnTentacle(MonsterSpawnPoint p) {

    }

    public void SpawnGhost(MonsterSpawnPoint p) {

    }

    public void SpawnVampire(MonsterSpawnPoint p) {

    }

}