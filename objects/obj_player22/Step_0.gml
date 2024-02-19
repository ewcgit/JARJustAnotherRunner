/// @description Insert description here
// You can write your code in this editor

if (global.playerDead){
	exit; // End events when the player dies.
}

scr_keypress();
scr_airstate();
scr_hitbox();
scr_imageSetter();
scr_onFloor();

// Win condition for a game and/or a level; 20000 points now.
if (global.points > 19999){
	audio_stop_all();
	room_goto(Room000);
}