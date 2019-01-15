using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

//using System.Diagnostics;

namespace Sink.Audio
{
	[RequireComponent(typeof(AudioSource))]
    public class Music : MonoBehaviour {

        public AudioClip CurrentSong;
        private static AudioSource _source1;
        public List<AudioClip> Songs;
        string currentSongName;

        private static Music instance = null;

        public Dictionary<string, AudioClip> SongsDict;
        public List<string> names, prevNames;
        public bool Updated;
        public float DefaultVolume;


        public static AudioSource Source
        {
            get
            {
                if (_source1 == null) { Source = instance.GetComponent<AudioSource>(); }
                return _source1;
            }

            set
            {
                _source1 = value;
            }
        }

        void Awake()
        {
            if (instance != null && instance != this)
            {
                Destroy(gameObject);
                return;
            }
            instance = this;
            DontDestroyOnLoad(gameObject);
            // SceneManager.activeSceneChanged += SceneManager_activeSceneChanged1; ;
        }

        void OnEnable()
        {
       
            //SceneManager.sceneLoaded += OnLevelFinishedLoading;
        }

        void OnDisable()
        {
            //SceneManager.sceneLoaded -= OnLevelFinishedLoading;
        }

        void OnLevelFinishedLoading(Scene scene, LoadSceneMode mode)
        {
            if (CurrentSong != Songs[SceneManager.GetActiveScene().buildIndex])
            {
                Source.Stop();
                CurrentSong = Songs[SceneManager.GetActiveScene().buildIndex];
                Source.loop = true;
                Source.clip = CurrentSong;
                if (PlayerPrefs.GetInt("Music") == 1)
                {
                    Source.Play();
                }
            }
        }

        void Start()
        {
            Source.Stop();
            Source = GetComponent<AudioSource>();
            //CurrentSong = Songs[SceneManager.GetActiveScene().buildIndex];
            Source.loop = true;
            Source.clip = CurrentSong;
            Source.Play();
        }
	
        // Update is called once per frame

        public static void PlaySound(AudioClip sound, float volume=1)
        {
            Source.PlayOneShot(sound, volume);
        }

        public static void Stop()
        {
            Source.Stop();
        }

        public static void Play()
        {
            Source.Play();
        }

        public static void ChangeSong(string SongName)
        {
            
            if (instance.SongsDict == null)
            {
                instance.SongsDict = new Dictionary<string, AudioClip>();
                instance.SongsDict.FromLists(instance.names, instance.Songs);
            }
            if (!instance.SongsDict.ContainsKey(SongName)) { return; }
            Source.Stop();
            instance.CurrentSong = instance.SongsDict[SongName];
            Source.loop = true;
            Source.clip =instance.CurrentSong;
            Source.Play();

            instance.currentSongName = SongName;
        }

        public static string currentSong()
        {
            return instance.currentSongName;
        }

    }
}
