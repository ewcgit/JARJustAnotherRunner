/// @description Insert description here
// You can write your code in this editor

global.pace += 0.0002; // Increases very slightly per frame; this is multiple by the average frames per second.
global.points += (global.pace * 2); // The faster the game's pace, the more points per frame the player earns overall.