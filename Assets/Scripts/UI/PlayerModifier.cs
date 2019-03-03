using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cthulu;
using UnityEngine.UI;

namespace Cthulu.debug
{


    public class PlayerModifier : MonoBehaviour
    {
        [SerializeField] GameObject menu;
        public static bool open = true;
        [SerializeField] private Player player;
        [SerializeField] private PlayerMovement playerMv;
        public Slider speedSlider;
        public Text speedText;
        public Text RangeText;
        public Text PowerText;
        public void Update()
        {
            if(Input.GetKeyDown(KeyCode.M)){
                Open();
            }
        }



        public void SetSpeed(float s)
        {
            speedText.text = "Speed = " + s;
            playerMv.SetSpeed(s);
        }


        public void SetRange(float r)
        {   
            RangeText.text = "Range = " + r;
            player.SetRange(r);
            // player.interactRange+1;
        }
        public void SetPower(float p)
        {
            PowerText.text = "Power = " + p;
            player.SetPower(p);
        }

        public void Open(){
            menu.gameObject.SetActive(true);
            player.Lock();
        }

        public void Close(){
            menu.gameObject.SetActive(false);
            player.Unlock();
        }


    }
}