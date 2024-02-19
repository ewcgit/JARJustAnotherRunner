/// @description Insert description here
// You can write your code in this editor


// Blackness displayed.
draw_sprite(spr_hpbordershadow, 0, hpBarX, hpBarY);
// Draws the health bar stretched out.
draw_sprite_stretched(spr_hpbar, 0, hpBarX, hpBarY, min((playerHP / playerHP_max) * hpBarWidth), hpBarHeight);
// Border itself displayed.
draw_sprite(spr_hpborder, 0, hpBarX, hpBarY);