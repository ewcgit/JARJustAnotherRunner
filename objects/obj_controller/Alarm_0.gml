/// @description Insert description here
// You can write your code in this editor

// Randomly sets the obstacle and its sprite, or its type.
randomize();
var count = irandom_range(2, 1);

// Sets the height and spawn point.
var i = instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_obstacle);
i.sprite_index = choose(spr_person, spr_missile); // Person or missile obstacle.
switch(i.sprite_index){ // If it's the person, the eye status is totally random.
	case spr_person:
		i.image_speed = 0;
		i.image_index = irandom_range(0,sprite_get_number(i.sprite_index) - 1); // Needs to be 1 fewer than the total.
		if(global.pace > 1.5){ // Checks the game's speed.
			if(count == 2){
				var j = instance_create_layer(room_width + 100, room_height - 75, "Instances", obj_obstacle);
				j.sprite_index = choose(spr_person);
				j.image_speed = 0; // Frozen image.
				j.image_index = irandom_range(0, sprite_get_number(j.sprite_index) - 1);
			}
		}
		break;
		default:
		i.image_speed = 0; // Frozen image.
		i.y = choose(room_height - 85, room_height - 145, room_height - 180);
}

if(global.playerDead){
	exit; // If the player dies.
}

// Random spawning.
alarm[0] = room_speed * random_range(1/global.pace, 3/global.pace);