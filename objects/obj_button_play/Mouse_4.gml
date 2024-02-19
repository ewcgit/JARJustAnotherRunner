/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

// Audio controls.
audio_play_sound(gamestart, 100, false); // Start sound.
audio_stop_all(); // Stops the title screen's musical theme.

// Goes to the cutscene.
room_goto(Room0);