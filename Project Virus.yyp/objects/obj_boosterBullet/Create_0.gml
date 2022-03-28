//Set up motion
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 7;
image_angle = direction;

//sound
audio_sound_pitch(snd_shotgun, random_range(0.8, 1.2));
audio_play_sound(snd_shotgun, 1, false);