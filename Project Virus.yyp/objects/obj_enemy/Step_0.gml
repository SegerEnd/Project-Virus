//Movement
if (instance_exists(obj_player))
{
    move_towards_point(obj_player.x, obj_player.y, spd);
}
//destroy
if (hp) <= 0 instance_destroy();

if (hp) <= 0
{
    with(obj_score) thescore = thescore + 1;
    instance_destroy();
}
//sound
if (hp) <= 0
{
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	audio_play_sound(snd_death, 1, false);
    instance_destroy();
}

