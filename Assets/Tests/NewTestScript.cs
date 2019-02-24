using System.Collections;
using System.Collections.Generic;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;
using UnityEditor;
using UnityEditor.SceneManagement;

namespace Tests
{
    public class NewTestScript : MonoBehaviour
    {

        public GameObject monsterSpawnController = GameObject.Find("MonsterSpawnController");
        // A Test behaves as an ordinary method
        [Test]
        public void NewTestScriptSimplePasses()
        {
            bool isActive = false;
            Assert.AreEqual(false, isActive);
            // Use the Assert class to test conditions
        }

        [Test]
        public void CatchingErrors()
        {
            GameObject gameobject = new GameObject("test");
            Assert.Throws<MissingComponentException>
            (
                () => gameobject.GetComponent<Rigidbody>().velocity = Vector3.one
            );
        }

        [SetUp]
        public void ResetScene()
        {
            EditorSceneManager.NewScene(NewSceneSetup.EmptyScene);
        }

        // A UnityTest behaves like a coroutine in Play Mode. In Edit Mode you can use
        // `yield return null;` to skip a frame.

        [UnityTest]
        public IEnumerator InstantiateTentacleFromMonsterSpawner()
        {
            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            tentacleSpawner.Construct(tentaclePrefab, 0, 1);

            yield return null;

            var spawnedTentacle = GameObject.Find("Tentacle");
            var prefabOfSpawnedTentacle = PrefabUtility.GetCorrespondingObjectFromSource(spawnedTentacle);
            //var prefabOfSpawnedTentacle = PrefabUtility.GetPrefabParent(spawnedTentacle);
            Assert.AreEqual(tentaclePrefab, prefabOfSpawnedTentacle);
        }

        [UnityTest]
        public IEnumerator InstantiatePortalFromMonsterSpawner()
        {
            var portalPrefab = Resources.Load("Tests/Portal");
            var portalSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            portalSpawner.Construct(portalPrefab, 0, 1);

            yield return null;

            var spawnedPortal = GameObject.Find("Portal");
            var prefabOfSpawnedPortal = PrefabUtility.GetCorrespondingObjectFromSource(spawnedPortal);            
            //The GetPrefabParent is obsolete
            //var prefabOfSpawnedPortal = PrefabUtility.GetPrefabParent(spawnedPortal);

            Assert.AreEqual(portalPrefab, prefabOfSpawnedPortal);
        }

        [UnityTest]
        public IEnumerator InstantiateGameObjectAtRandomPosition()
        {
            var portalPrefab = Resources.Load("Tests/Portal");
            var portalSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            portalSpawner.Construct(portalPrefab, 0, 1);
            var random = new Vector3(0,0,Random.Range(-10, 10));
            portalSpawner.Random = random;
            var spawnedPortal = GameObject.Find("Portal");
            var expectedPortalPosition = new Vector3(0,0,-1);
            Assert.AreEqual(expectedPortalPosition, spawnedPortal.transform.position);            

            yield return null;

            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawnController>();
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
            var portalSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            portalSpawner.Construct(portalPrefab,1,1);

            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            tentacleSpawner.Construct(tentacleSpawner,1,1);

            var spawnedPortal = GameObject.Find("Portal");
            var spawnedTentacle = GameObject.Find("Tentacle");

            yield return new WaitForSeconds(0.75f);
            Assert.IsNull(spawnedTentacle);
            Assert.IsNull(spawnedPortal);
        }
/* Need NSubstitute to get this to work, but can't seem to figure out how to get NSubstitute
        [UnityTest]
        public IEnumerator InstantiatesGameObjectsAtRandomPositionOnCircularBoundary()
        {
            var random = NSubstitute.Substitute.For<System.Random>();
            random.Next(Arg.Any<int>(), Arg.Any<int>()).Returns(270);

            var portalPrefab = Resources.Load("Tests/Portal");
            var portalSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            portalSpawner.Construct(portalPrefab, 0, 1);
            portalSpawner.Random = random;
            var spawnedPortal = GameObject.Find("Portal");
            var expectedPortalPosition = new Vector3(0,0,-1);
            Assert.AreEqual(expectedPortalPosition, spawnedPortal.transform.position);

            var tentaclePrefab = Resources.Load("Tests/Tentacle");
            var tentacleSpawner = new GameObject().AddComponent<MonsterSpawnController>();
            tentacleSpawner.Construct(tentaclePrefab, 0, 1);
            tentacleSpawner.Random = random;
            var spawnedTentacle = GameObject.Find("Tentacle");
            var expectedTentaclePosition = new Vector3(0,0,-1);
            Assert.AreEqual(expectedTentaclePosition, spawnedTentacle.transform.position);
            yield return null;

        }
*/
        [UnityTest]
        public IEnumerator MoneyGoesUp()
        {
            yield return null;

        }

        [UnityTest]
        public IEnumerator InstantiateNPC()
        {
            yield return null;

        }

        [UnityTest]
        public IEnumerator ActionsCanBePerformed()
        {
            yield return null;

        }

        [UnityTest]
        public IEnumerator CanScareNPCS()
        {
            yield return null;

        }

        

        [TearDown]
        public void AfterEveryTest()
            {
                foreach (var gameObject in GameObject.Find("Tentacle"))
                {
                    Object.Destroy(gameObject);
                }

                foreach (var gameObject in Object.FindObjectsOfType<MonsterSpawnController>())
                {
                    Object.Destroy(gameObject);
                }
            }
    }
}
