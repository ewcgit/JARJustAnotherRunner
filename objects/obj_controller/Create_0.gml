/// @description Insert description here
// You can write your code in this editor

global.pace = 1; // Variable for the game's overall speed.
global.points = 0; // Variable for the player's total score.

// Randomization of the obstacles.
alarm[0] = room_speed * 3;

// Cloud portion.
alarm[1] = room_speed * 8;

// Apple instantiation.
alarm[2] = room_speed * 10;