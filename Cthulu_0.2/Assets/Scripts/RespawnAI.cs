using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RespawnAI : MonoBehaviour
{

    public GameObject buyer;
    // Use this for initialization
    public Vector3 offset;
    public int TotalNumberOfBuyer;
    public int time;
    public List<GameObject> NPCs = new List<GameObject>();
    public List<GameObject> portals = new List<GameObject>();
    public List<GameObject> tentacles = new List<GameObject>();
    public List<GameObject> roomPoints = new List<GameObject>();
    public RawImage npcMenu;
    public RawImage winScreen;
    public RawImage loseScreen;
    public int stageSelect;
    public AudioClip tutStep0;
    public AudioClip tutStep1;
    public AudioClip tutStep2;
    public AudioClip tutStep3;
    public AudioClip tutStep4;
    public AudioClip tutStep5;
    public AudioClip tutStep6;
    public AudioClip tutStep7;
    public AudioClip tutStep8;
    public AudioClip tutStep9;
    public AudioClip tutStep10;
    public AudioClip tutStep11;
    public AudioClip tutStep12;
    public AudioClip tutStep13;
    public AudioClip tutStep14;
    public AudioClip tutStep15;
    public AudioClip tutStep16;
    private AudioSource source;
    void Start()
    {
        source = GetComponent<AudioSource>();
        npcMenu = GameObject.FindGameObjectsWithTag("playerInteractMenu")[0].GetComponent<RawImage>();
        winScreen = GameObject.FindGameObjectsWithTag("winScreen")[0].GetComponent<RawImage>();
        loseScreen = GameObject.FindGameObjectsWithTag("loseScreen")[0].GetComponent<RawImage>();
        winScreen.enabled = false;
        loseScreen.enabled = false;
        npcMenu.enabled = false;
        //get array of tentacles and portals and make them invisible, so they can be turned on/off
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle0")[0]);
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle1")[0]);
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle2")[0]);
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle3")[0]);
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle4")[0]);
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle5")[0]);
        tentacles.Add(GameObject.FindGameObjectsWithTag("tentacle6")[0]);
        for (int tentacleNumber = 0; tentacleNumber < tentacles.Count; tentacleNumber++)
        {
            tentacles[tentacleNumber].SetActive(false);
        }
        portals.Add(GameObject.FindGameObjectsWithTag("portal0")[0]);
        portals.Add(GameObject.FindGameObjectsWithTag("portal1")[0]);
        portals.Add(GameObject.FindGameObjectsWithTag("portal2")[0]);
        portals.Add(GameObject.FindGameObjectsWithTag("portal3")[0]);
        portals.Add(GameObject.FindGameObjectsWithTag("portal4")[0]);
        portals.Add(GameObject.FindGameObjectsWithTag("portal5")[0]);
        portals.Add(GameObject.FindGameObjectsWithTag("portal6")[0]);
        for (int portalNumber = 0; portalNumber < portals.Count; portalNumber++)
        {
            portals[portalNumber].SetActive(false);
        }
        roomPoints.Add(GameObject.FindGameObjectsWithTag("roomPoint0")[0]);
        roomPoints.Add(GameObject.FindGameObjectsWithTag("roomPoint1")[0]);
        roomPoints.Add(GameObject.FindGameObjectsWithTag("roomPoint2")[0]);
        roomPoints.Add(GameObject.FindGameObjectsWithTag("roomPoint3")[0]);
        roomPoints.Add(GameObject.FindGameObjectsWithTag("roomPoint4")[0]);
        roomPoints.Add(GameObject.FindGameObjectsWithTag("roomPoint5")[0]);

        StartCoroutine(driver(stageSelect));
    }
    //Tentacle Number and locations: starts in lobby then goes clockwise around the house, starting with the immediate room to the left
    IEnumerator driver(int stageNumber)
    {
        if (stageNumber == 0)
        {
            source.PlayOneShot(tutStep0);
            yield return new WaitForSeconds(5);
            source.PlayOneShot(tutStep1);
            yield return new WaitForSeconds(10);
            source.PlayOneShot(tutStep2);
            yield return new WaitForSeconds(5);
            spawnPortal(5);
            source.PlayOneShot(tutStep3);
            yield return new WaitForSeconds(2);
            spawnTentacle(5);
            yield return new WaitForSeconds(4);
            source.PlayOneShot(tutStep4);
            yield return new WaitForSeconds(15);
            source.PlayOneShot(tutStep5);
            yield return new WaitForSeconds(4);
            source.PlayOneShot(tutStep6);
            yield return new WaitForSeconds(4);
            spawnNPC();
            sendNPCtoLocation(0, 0);
            yield return new WaitForSeconds(6);
            source.PlayOneShot(tutStep12);
            spawnPortal(2);
            yield return new WaitForSeconds(5);
            spawnTentacle(2);
            yield return new WaitForSeconds(5);
            sendNPCtoLocation(0, 2);
            yield return new WaitForSeconds(15);
            Time.timeScale = 0.0f;
            winScreen.enabled = true;
            yield return null;
        }
        else if (stageNumber == 1)
        {
            //Stage 1:
            //Portal in lobby appears after 5 seconds
            //Tentacle appears after more 10 seconds
            //the NPC spawns at 10 seconds and takes 10 seconds to get to the lobby,
            //and they all disappear at a world time of 25 (so the player has to distract the NPCs for 15 seconds)
            yield return new WaitForSeconds(5);
            spawnPortal(1);
            yield return new WaitForSeconds(10);
            spawnNPC();
            sendNPCtoLocation(0, 0);
            spawnTentacle(1);
            yield return new WaitForSeconds(15);
            sendNPCtoLocation(0, 1);
            yield return new WaitForSeconds(30);
            Time.timeScale = 0.0f;
            if (winLoseCheck())
            {
                winScreen.enabled = true;
            }
            else
            {
                loseScreen.enabled = true;
            }
            yield return null;
        }
        else if (stageNumber == 2)
        {

            //Stage 2: 
            //Two portals appear at 5 seconds in. A portal in the lobby, and a portal in the kitchen. 
            //At 5 seconds after the tentacle in the lobby would spawn and two NPCs would spawn (so at 10 seconds in ). 
            //One would go to the kitchen and the other to the lobby. 
            //The tentacle in the kitchen would spawn at 15 seconds in. So the second NPC would already be in the kitchen if the player hadn't taken care of it. 
            //All disappear after 5 more seconds (meaning the whole thing disappears after 20 real seconds)
            yield return new WaitForSeconds(5);//2,3,1,5,4,0 
            spawnPortal(5);
            yield return new WaitForSeconds(5);
            spawnNPC();
            sendNPCtoLocation(0, 0);
            yield return new WaitForSeconds(10);
            spawnTentacle(5);
            yield return new WaitForSeconds(20);
            spawnPortal(2);
            yield return new WaitForSeconds(5);
            spawnPortal(3);
            yield return new WaitForSeconds(5);
            spawnTentacle(2);
            yield return new WaitForSeconds(2);
            spawnTentacle(3);
            yield return new WaitForSeconds(20);
            //endLevel
            Time.timeScale = 0.0f;
            if (!NPCs[0].GetComponent<AI>().scare)
            {
                winScreen.enabled = true;
            }
            else
            {
                loseScreen.enabled = true;
            }
            yield return null;
        }
        else if (stageNumber == 3)
        {
            //Stage 3 (totally optional):  
            //Spawn a portal in every room at the first second. 
            //Spawn 2 NPCs at 5 second. 
            //In a clockwise fashion the tentacles spawn every 5 seconds after the NPCs spawn 
            yield return new WaitForSeconds(5);
            spawnNPC();
            sendNPCtoLocation(0, 5);
            yield return new WaitForSeconds(3);
            spawnNPC();
            sendNPCtoLocation(1, 4);
            yield return new WaitForSeconds(10);
            spawnPortal(6);
            yield return new WaitForSeconds(7);
            spawnTentacle(6);
            sendNPCtoLocation(0, 2);
            //endLevel
            yield return new WaitForSeconds(20);
            Time.timeScale = 0.0f;
            if (!NPCs[0].GetComponent<AI>().scare || !NPCs[1].GetComponent<AI>().scare)
            {
                winScreen.enabled = true;
            }
            else
            {
                loseScreen.enabled = true;
            }

            yield return null;
        }
        else
        {
            yield return null;
        }
    }
    // Update is called once per frame
    void Update()
    {

    }

    public void sendNPCtoLocation(int NPCNumber, int locationNumber)
    {
        if (!NPCs[NPCNumber].GetComponent<AI>().scare)
        {
            NPCs[NPCNumber].GetComponent<AI>().agent.SetDestination(roomPoints[locationNumber].transform.position);
        }
    }

    //make immediate
    bool winLoseCheck()
    {
        List<bool> scaredNPCs = new List<bool>();
        for (int NPCNumber = 0; NPCNumber < NPCs.Count; NPCNumber++)
        {
            scaredNPCs.Add(NPCs[NPCNumber].GetComponent<AI>().scare);
        }
        if (scaredNPCs.Contains(false))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    void spawnNPC() //add argument for array of roomPoints in order of visits
    {
        NPCs.Add(Instantiate(buyer, gameObject.transform.position + offset, gameObject.transform.rotation));
        NPCs[NPCs.Count - 1].GetComponent<AI>().setNPCNumber(NPCs.Count - 1);
    }
    //toggles tentacle[n] on or off
    bool spawnTentacle(int tentacleNumber)
    {
        if (portals[tentacleNumber].activeSelf)
        {
            tentacles[tentacleNumber].SetActive(true);
            return tentacles[tentacleNumber].activeSelf;
        }
        else return false;
    }
    //toggles portal[n] on or off
    bool spawnPortal(int portalNumber)
    {
        portals[portalNumber].SetActive(true);
        return portals[portalNumber].activeSelf;
    }

}