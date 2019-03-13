using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

namespace Cthulu {

    [Serializable]
    public class SoundEffects : MonoBehaviour {

        [Serializable]
        public struct sfx {
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

        public void Awake() {
            if (DefaultSounds == null) {
                DefaultSounds = this;
            }
            if (DefaultSounds == this) {
            }
        }

        public void PlaySound(string Sound, float volume) {
            if (soundEffects == null) {
                soundEffects = new List<sfx>();
            }
            if (HasSound(Sound)) {

                AudioClip s = soundEffects.Where(x => x.name == Sound).First().sound;
                Music.PlaySound(s, volume);
                Music.Source.pitch = 1;
            } else if (this != DefaultSounds) {
                DefaultSounds.PlaySound(Sound, volume);
            } else {
                Debug.LogWarning("No sound effect named " + Sound);
            }
        }

        public void PlaySound(AudioClip Sound, float volume) {

            Music.PlaySound(Sound, volume);
            Music.Source.pitch = 1;

        }

        public void PlaySound(string Sound, AudioSource sounds, float volume) {
            if (soundEffects == null) {
                soundEffects = new List<sfx>();
            }
            if (HasSound(Sound)) {

                AudioClip s = soundEffects.Where(x => x.name == Sound).First().sound;
                Music.PlaySound(s, sounds, volume);
                Music.Source.pitch = 1;
            } else if (this != DefaultSounds) {
                DefaultSounds.PlaySound(Sound, sounds, volume);
            } else {
                Debug.LogWarning("No sound effect named " + Sound);
            }
        }

        public bool HasSound(string Sound) {
            return soundEffects.Where(x => x.name == Sound).Count() > 0;
        }

    }
}