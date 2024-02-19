// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_hitbox(){
	if(place_meeting(x, y + verticalSpeed, obj_blockmove)){ // Player and floor block with collision.
		while(!place_meeting(x, y+sign(verticalSpeed), obj_blockmove)){
			y += sign(verticalSpeed);
		}
		verticalSpeed = 0; // Frozen vspeed.
	}
	y += verticalSpeed; // Additive vspeed.
}