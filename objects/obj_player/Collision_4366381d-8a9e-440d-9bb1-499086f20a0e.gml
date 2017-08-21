/// @description Insert description here
// You can write your code in this editor
if (flashing == false)
{
	instance_create_layer(x, y, "Instances", obj_screenShake);
	instance_create_layer(x, y, "Instances", obj_explosion);
	audio_play_sound(sd_explosion, 0, false);
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
	if (global.highScore < global.scr * global.enemiesKilled)
		scr_saveHighscore();
	room_goto(rm_mainMenu);
}