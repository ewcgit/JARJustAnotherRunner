/// @description Insert description here
// You can write your code in this editor

// Remove alphas.
gpu_set_blendenable(false);

if(pause = true){ // Checks if the game is paused.
	// Add work to pause animations later.
	surface_set_target(application_surface);
		if(surface_exists(pauseSurf)){
			draw_surface(pauseSurf, 0, 0);
		}
		else{
			pauseSurf = surface_create(resW, resH);
			buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
		}
		// Pause graphic.
		draw_sprite(spr_pause2, 0, room_width/2, room_height/2);
		var layerBG = layer_get_id("Background_2");
		layer_set_visible(layerBG, true);
	surface_reset_target();
}

if((keyboard_check_pressed(ord("S")) || (gamepad_button_check_pressed(0, gp_start)))){ // S key to STOP.
	audio_play_sound(gamestart, 100, false); // Pause sound.
	if(pause = false){ // Checks if the game is not paused then pauses it.
		pause = true;
		
		instance_deactivate_all(true);
		
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		if(buffer_exists(pauseSurfBuffer)){
			buffer_delete(pauseSurfBuffer);
		}
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);}
		
	else{
		// Add work to unpause animations later.
		pause = false;
		var layerBG2 = layer_get_id("Background_2");
		layer_set_visible(layerBG2, false);
		instance_activate_all();
		if (surface_exists(pauseSurf)){
			surface_free(pauseSurf);
		}
		if(buffer_exists(pauseSurfBuffer)){
			buffer_delete(pauseSurfBuffer);
		}
	}	
}
// Add alphas back to the screen.
gpu_set_blendenable(true);