using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Letter : MonoBehaviour {

	public Sprite[] letterSprites = new Sprite[3];
    public SpriteRenderer currentSprite;
    private int spriteNum;
    public GameObject logo;

    // Use this for initialization
	void Start () {
		
	}

    private void OnMouseDown()
    {
        spriteNum++;
        if (spriteNum < 3)
        {
            currentSprite.sprite = letterSprites[spriteNum];
        }
        else
        {
            logo.SetActive(true);
            Invoke("NextScene", 3);
        }
    }

    void NextScene()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("finalLevel");
    }
}
