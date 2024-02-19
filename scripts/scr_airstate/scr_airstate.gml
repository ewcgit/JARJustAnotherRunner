// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_airstate(){
	if(ascending){ // Allows the player to jump when they are on the game's floor.
		if (0 > verticalSpeed){
			ascending = true;
		}
		else{ // Returns the player to the ground.
			ascending = false;
			descending = true;
		}
	}
}