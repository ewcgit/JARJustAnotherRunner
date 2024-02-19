/// @description Insert description here
// You can write your code in this editor

playerGravity = 7; // Default player gravity setting.
jumpingSpeed = 50; // Default player jumping speed.
verticalSpeed = 0; // Default player vertical speed.
terminalVelocity = 50; // Terminal velocity of the game's world.
crouching = false; // Crouching to avoid missile state, another boolean state.
ascending = false; // Jumping state.
descending = false; // Falling after jumping state.

playerHP = 4; // Current health.
playerHP_max = playerHP; // Max health.

hpBarWidth = 100;
hpBarHeight = 12;
hpBarX = (320 / 2) - (hpBarWidth / 2); // Where the HP bar horizontally spawns.
hpBarY = ystart - 600; // Where the HP bar vertically spawns.

playerFlash = 0;