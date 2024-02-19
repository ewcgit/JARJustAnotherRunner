/// @description Insert description here
// You can write your code in this editor

speed = -20 * global.pace; // Obstacle speed.

if(x < -120){ // Freed from memory when 120 pixels to the left of the room.
	instance_destroy();
}