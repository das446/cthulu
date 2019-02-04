using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Cthulu
{
    public static class Audio
    {
        /// <summary>
        /// Call with this.PlaySound("sfx",OnScreen: true, param2: false)
        /// </summary>
        /// <param name="soundName">Name of the sound effect</param>
        /// <param name="OnScreen">Does the object making the sound need to be on screen. Works best in 2d games</param>
        /// <param name="volume">Volume from 0 to 1</param>
        /// <param name="randomPitch">Should the sound be slightly different each time</param>
        public static void PlaySound(string soundName, bool OnScreen = false, float volume = 1, bool randomPitch = false)
        {
            SoundEffects.DefaultSounds.PlaySound(soundName, volume);
        }

        /// <summary>
        /// Call with this.PlaySound("sfx",OnScreen: true, param2: false)
		/// Uses GetComponent to get the audio source from the object
        /// </summary>
        /// <param name="soundName">Name of the sound effect</param>
        /// <param name="OnScreen">Does the object making the sound need to be on screen. Works best in 2d games</param>
        /// <param name="volume">Volume from 0 to 1</param>
        /// <param name="randomPitch">Should the sound be slightly different each time</param>
        public static void PlaySound(this GameObject g, string soundName, bool OnScreen = false, float volume = 1, bool randomPitch = false)
        {
            AudioSource a = g.GetComponent<AudioSource>();
            if (a == null)
            {
                Debug.LogWarning("No AudioSource on " + g.name);
                SoundEffects.DefaultSounds.PlaySound(soundName, a, volume);
            }
            else
            {
                SoundEffects.DefaultSounds.PlaySound(soundName, volume);
            }

        }
    }
}