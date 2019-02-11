using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;
using UnityEditor;
using Cthulu.MonsterSpawner;

namespace Tests
{
    public class NewTestScript
    {

        // A Test behaves as an ordinary method
        [Test]
        public void NewTestScriptSimplePasses()
        {
            // Use the Assert class to test conditions
        }

        // A UnityTest behaves like a coroutine in Play Mode. In Edit Mode you can use
        // `yield return null;` to skip a frame.

        [UnityTest]
        public IEnumerator InstantiateTentacleFromMonsterSpawner()
        {
            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawner>();
            tentacleSpawner.Construct(tentaclePrefab, 0, 1);

            yield return null;

            var spawnedTentacle = GameObject.Find("Tentacle");
            var prefabOfSpawnedTentacle = PrefabUtility.GetPrefabParent(spawnedTentacle);
            Assert.AreEqual(tentaclePrefab, prefabOfSpawnedTentacle);
        }

        [UnityTest]
        public IEnumerator InstantiatePortalFromMonsterSpawner()
        {
            var portalPrefab = Resources.Load("Tests/Portal");
            var portalSpawner = new GameObject().AddComponent<MonsterSpawner>();
            portalSpawner.Construct(portalPrefab, 0, 1);

            yield return null;

            var spawnedPortal = GameObject.Find("Portal");
            var prefabOfSpawnedPortal = PrefabUtility.GetPrefabParent(spawnedPortal);
            Assert.AreEqual(portalPrefab, prefabOfSpawnedPortal);
        }

        [UnityTest]
        public IEnumerator InstantiateGameObjectAtRandomPosition()
        {
            var portalPrefab = Resources.Load("Tests/Portal");
            var portalSpawner = new GameObject().AddComponent<MonsterSpawner>();
            portalSpawner.Construct(portalPrefab, 0, 1);
            var random = new Vector3(0,0,(-10, 10));
            portalSpawner.Random = random;
            var spawnedPortal = GameObject.Find("Portal");
            var expectedPortalPosition = new Vector3(0,0,-1);
            Assert.AreEqual(expectedPortalPosition, spawnedPortal.transform.position);            

            yield return null;

            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawner>();
            tentacleSpawner.Construct(tentaclePrefab, 0, 1);
            tentacleSpawner.Random = random;
            var spawnedTentacle = GameObject.Find("Tentacle");
            var expectedTentaclePosition = new Vector3(0,0,-1);
            Assert.AreEqual(expectedTentaclePosition, spawnedTentacle.transform.position);
        }

        [UnityTest]
        public IEnumerator InstantiationsOccurOnAnInterval()
        {
            var portalPrefab = Resources.Load("Tests/Portal");
            var portalSpawner = new GameObject().AddComponent<MonsterSpawner>();
            portalSpawner.Construct(portalPrefab,1,1);

            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawner>();
            tentacleSpawner.Construct(tentacleSpawner,1,1);

            var spawnedPortal = GameObject.Find("Portal");
            var spawnedTentacle = GameObject.Find("Tentacle");

            yield return new WaitForSeconds(0.75f);
            Assert.IsNull(spawnedPortal);
        }

        [UnityTest]
        public IEnumerator MoneyGoesUp()
        {

        }

        [UnityTest]
        public IEnumerator InstantiateNPC()
        {

        }

        [UnityTest]
        public IEnumerator ActionsCanBePerformed()
        {

        }

        [UnityTest]
        public IEnumerator CanScareNPCS()
        {

        }

        

        [TearDown]
        public void AfterEveryTest()
            {
                foreach (var gameObject in GameObject.Find("Tentacle"))
                {
                    Object.Destroy(gameObject);
                }

                foreach (var gameObject in Object.Find("Portal"))
                {
                    Object.Destroy(gameObject);
                }
            }
    }
}
