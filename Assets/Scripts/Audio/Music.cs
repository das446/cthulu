using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;

//using System.Diagnostics;

namespace Cthulu {
    [RequireComponent(typeof(AudioSource))]
    public class Music : MonoBehaviour {

        [Serializable]
        public struct Song {
            public string name;
            public AudioClip sound;
        }

        [SerializeField]
        public List<Song> songs;

        public AudioClip CurrentSong;
        private static AudioSource _source1;
        string currentSongName;
        

        private static Music instance = null;

        public float DefaultVolume = 0;

        public static AudioSource Source {
            get {
                if (_source1 == null) { Source = instance.GetComponent<AudioSource>(); }
                return _source1;
            }

            set {
                _source1 = value;
            }
        }

        void Awake() {
            if (instance != null && instance != this) {
                Destroy(gameObject);
                return;
            }
            instance = this;
            DontDestroyOnLoad(gameObject);
            // SceneManager.activeSceneChanged += SceneManager_activeSceneChanged1; ;
        }

        void OnEnable() {

            //SceneManager.sceneLoaded += OnLevelFinishedLoading;
        }

        void OnDisable() {
            //SceneManager.sceneLoaded -= OnLevelFinishedLoading;
        }

        void OnLevelFinishedLoading(Scene scene, LoadSceneMode mode) {
            ChangeSong(scene.buildIndex);
        }

        void Start() {
            Source.Stop();
            Source = GetComponent<AudioSource>();
            //CurrentSong = Songs[SceneManager.GetActiveScene().buildIndex];
            Source.loop = true;
            Source.clip = CurrentSong;
            Source.Play();
            
        }

        // Update is called once per frame

        public static void PlaySound(AudioClip sound, float defaultVolume) {
            Source.PlayOneShot(sound, defaultVolume);
        }

        public static void PlaySound(AudioClip sound, AudioSource music, float defaultVolume) {
            Debug.Log("Sound");
            music.PlayOneShot(sound, defaultVolume);
        }

        public static void Stop() {
            Source.Stop();
        }

        public static void Play() {
            Source.Play();
        }

        public static void ChangeSong(string SongName) {

            Source.Stop();
            instance.CurrentSong = instance.songs.Where(x => x.name == SongName).First().sound;
            Source.loop = true;
            Source.clip = instance.CurrentSong;
            Source.Play();
            instance.currentSongName = SongName;
        }

        public static void ChangeSong(int SongIndex) {

            Source.Stop();
            instance.CurrentSong = instance.songs[SongIndex].sound;
            Source.loop = true;
            Source.clip = instance.CurrentSong;
            Source.Play();
        }

        public static string currentSong() {
            return instance.currentSongName;
        }

    }
}