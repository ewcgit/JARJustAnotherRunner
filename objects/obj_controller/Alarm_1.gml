/// @description Insert description here
// You can write your code in this editor


// Random creation heights of the clouds.
randomize();
instance_create_layer(room_width + 100, room_height/2 + irandom_range(-190, -90), "Instances", obj_cloud);

if(global.playerDead){
	exit; // Game over stops the clouds' movements.
}

// Random spawning points for the obstacles.
alarm[1] = room_speed * random_range(4/global.pace, 8/global.pace);