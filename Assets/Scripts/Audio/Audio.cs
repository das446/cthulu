using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sink.Audio {
	public static class Audio {
		/// <summary>
		/// Call with this.PlaySound("sfx",OnScreen: true, param2: false)
		/// </summary>
		/// <param name="soundName">Name of the sound effect</param>
		/// <param name="OnScreen">Does the object making the sound need to be on screen. Works best in 2d games</param>
		/// <param name="volume">Volume from 0 to 1</param>
		/// <param name="randomPitch">Should the sound be slightly different each time</param>
		public static void PlaySound(this MonoBehaviour g, string soundName, bool OnScreen = false, float volume = 1, bool randomPitch = false) {

			SoundEffects sfx = g.GetComponent<SoundEffects>();
			if (sfx == null) {
				SoundEffects.DefaultSounds.PlaySound(soundName, volume);
			} else {
				sfx.PlaySound(soundName, volume);
			}
		}
	}
}