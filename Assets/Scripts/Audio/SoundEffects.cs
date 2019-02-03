using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

namespace Cthulu {

    [Serializable]
    public class SoundEffects : MonoBehaviour {

        [Serializable]
        public struct sfx{
            public string name;
            public AudioClip sound;
        }

        [SerializeField]
        public List<sfx> soundEffects;
        [HideInInspector] public List<string> prevNames;
        [HideInInspector] public List<AudioClip> prevSounds;
        [HideInInspector] public bool Updated;
        public float DefaultVolume;
        public static SoundEffects DefaultSounds;

        public void PlaySound(string Sound) {
            PlaySound(Sound, DefaultVolume);
        }

        public void Start() {
            if (DefaultSounds == null) {
                DefaultSounds = this;
            }
            if (DefaultSounds == this) {
                DontDestroyOnLoad(this);
            }
        }

        public void PlaySound(string Sound, float volume) {
            if (soundEffects == null) {
                soundEffects = new List<sfx>();
            }
            if (soundEffects.Where(x=>x.name==Sound).Count()>0) {
                
                AudioClip s = soundEffects.Where(x=>x.name==Sound).First().sound;
                Music.PlaySound(s, volume);
                Music.Source.pitch = 1;
            } else if (this != DefaultSounds) {
                DefaultSounds.PlaySound(Sound, volume);
            } else {
                Debug.LogWarning("No sound effect named " + Sound);
            }
        }

        public void PlaySound(string Sound,AudioSource source, float volume) {
            Debug.Log("test");
            if (soundEffects == null) {
                soundEffects = new List<sfx>();
            }
            if (soundEffects.Where(x=>x.name==Sound).Count()>0) {
                
                AudioClip s = soundEffects.Where(x=>x.name==Sound).First().sound;
                Music.PlaySound(s, source , volume);
                Music.Source.pitch = 1;
            } else if (this != DefaultSounds) {
                DefaultSounds.PlaySound(Sound, source, volume);
            } else {
                Debug.LogWarning("No sound effect named " + Sound);
            }
        }

    }
}