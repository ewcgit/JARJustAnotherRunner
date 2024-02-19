// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_imageSetter(){
	if(descending || ascending){ // Sprites for when the player is in mid-air.
		sprite_index = spr_run;
	}
	if (crouching){ // Sprites for when the player is ducking with blink effect.
		sprite_index = spr_duck;
		image_speed = 1;
	}
	if (!crouching && !ascending && !descending){ // Regular animation.
		sprite_index = spr_run;
		image_speed = 1;
	}
}