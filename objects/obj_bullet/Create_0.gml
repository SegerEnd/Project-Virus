//Set up motion
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 10;
image_angle = direction;

//sound
audio_sound_pitch(snd_rifle, random_range(0.8, 1.2));
audio_play_sound(snd_rifle, 1, false);