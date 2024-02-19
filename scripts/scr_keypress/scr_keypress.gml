// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_keypress(){
	if(gamepad_is_connected(0)){
		ascendButton = gamepad_button_check_pressed(0, gp_padu); // Jumps when the up arrow is pressed on the keyboard.
		crouchButton = gamepad_button_check(0, gp_padd); // Crouches when the down arrow is pressed on the keyboard.
	}
	else{
		ascendButton = keyboard_check_pressed(vk_up); // Jumps when the up arrow is pressed on the keyboard.
		crouchButton = keyboard_check(vk_down); // Crouches when the down arrow is pressed on the keyboard.
		// crouchButton4488 = keyboard_check(vk_left); // Crouches when the down arrow is pressed on the keyboard.
		crouchButton48 = keyboard_check(vk_right); // Crouches when the down arrow is pressed on the keyboard.
	}
}