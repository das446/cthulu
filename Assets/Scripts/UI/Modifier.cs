using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace cthulu.Assets.Scripts
{

    
    public class Modifier : MonoBehaviour
    {
        public GameObject ThePlyer;

        private Player Attribut;
        priavet Playermv;
        public Start(){
            Attribut = ThePlyer.GetComponent<Player>();
            Playermv = ThePlyer.GetComponent<PlayerMovement>();

        }
        GameObject player;
        void increaseWalkSpeed(){
            Playermv.SetSpeed(Playermv.getSpeed()++);
        }
        void decreaseWalkSpeed(){
            Playermv.SetSpeed(Playermv.getSpeed()--);
        }

        void increaseInterRange(){
            Attribut.interactRange++;
        }
        void decreaseInterRange(){
            Attribut.interactRange--;
        }
        void increasePower(){
             Attribut.power++;
        }
        void decreasePower(){
            Attribut.power--;
        }

    }
}