//sound
audio_sound_pitch(snd_pickaxe, random_range(0.8, 1.2));
audio_play_sound(snd_pickaxe, 1, false);
global.pickaxe = "True";
instance_destroy();
