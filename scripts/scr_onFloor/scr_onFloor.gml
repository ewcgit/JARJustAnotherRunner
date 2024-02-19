// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_onFloor(){
	if(crouchButton){ // Ducking and/or falling state button.
		crouching = true;
		ascending = false;
		descending = true;
	}
	
	if (place_meeting(x, y + 1, obj_blockmove)){ // Regular state.
		// Ground is being touched.
		verticalSpeed = 0;
		ascending = false;
		descending = false;
		
		if(!crouchButton){
			crouching = false;
		}
	}
	
	// Jumping section.
	if ((ascendButton) && !crouchButton && (ascending = false) && (descending = false)){
		audio_play_sound(jump, 100, false);
		ascending = true;
		verticalSpeed = -jumpingSpeed;
	}
	else{
		if(crouching){
			verticalSpeed += playerGravity * 4;
		}
		else{
			if(verticalSpeed < terminalVelocity){
				verticalSpeed += playerGravity;
			}
			if (sign(verticalSpeed) == 1){
				descending = true;
			}
		}
	}
}