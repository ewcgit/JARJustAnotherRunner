/// @description Insert description here
// You can write your code in this editor

// Sets the pace of the cloud's movement speed.
speed = (-5) * global.pace;

// Frees the png from system memory after it completely leaves the screen.
if(x < -120){ // 120 pixels to the left of the room.
	instance_destroy();
}