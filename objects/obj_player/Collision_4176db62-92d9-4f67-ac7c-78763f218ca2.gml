/// @description Insert description here
// You can write your code in this editor
if (flashing == false)
{
	audio_play_sound(sd_hit, 1, false);
	instance_destroy(obj_enemy_bullet);
	remainingLives--;
	x = room_width / 2;
	y = room_height - 64;
	flashing = true;
	alarm[1] = 120;
	alarm[2] = 30;
}
if (remainingLives == 0 && instance_exists(obj_player))
{
	global.scr = global.scr * global.enemiesKilled;	
	instance_destroy();
}