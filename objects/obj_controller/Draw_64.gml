/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(28, 172, 208)); // Bright blue font color.
draw_set_font(main_font); // Uses Modern Pixel font.
// draw_text(room_width/2, room_height/2, string(global.pace);
// Player's score displayed at the top right of the screen. Forced to integer display.
draw_text(room_width - 200, 20, string(int64(global.points)));

if (global.playerDead){ // Game over message displays.
	draw_sprite(spr_game_over, 0, room_width/2, room_height/2 + 20);
}