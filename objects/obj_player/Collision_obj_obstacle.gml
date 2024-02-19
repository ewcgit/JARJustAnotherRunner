/// @description Insert description here
// You can write your code in this editor

if((other.object_index != obj_apple) && (playerHP = 1)){ // If an object that isn't an apple is touched, then game over.
	playerHP--; // Sets it to 0 for the game over.
	if(!global.playerDead) && (!audio_is_playing(death)){ // Death sound loop prevention.
		instance_destroy(obj_obstacle);
		audio_play_sound(death, 100, false); // Death sound.
	}
	global.playerDead = true; // Game over set to be true.
	playerGravity = 0;
	global.pace = 0;
	image_speed = 0; // Frozen image.
	sprite_index = spr_dead;

	if(!instance_exists(obj_replay)){ // Creates the replay prompt only once.
		instance_create_layer(room_width/2 - 20, room_height/2, "Instances", obj_replay);
	}

	with (obj_obstacle){
		image_speed = 0; // Frozen image.
	}
	}
else if((other.object_index != obj_apple) && (playerHP > 1)){
	playerHP--; // Decreases HP.
	audio_play_sound(death, 100, false); // Death sound.
	// Destroy obstacle.
	if(instance_exists(obj_obstacle)){
		instance_destroy(obj_obstacle);
	}
}
else{
	global.points += 1000; // 1000 points when an apple item is eaten.
	audio_play_sound(apple, 100, false); // Apple eaten sound plays and it doesn't loop.
	instance_destroy(obj_apple); // Apple removed from the screen after being consumed.
}