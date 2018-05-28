/// @description Insert description here
// You can write your code in this editor

if(x + sprite_width/2 > room_width) x = room_width - sprite_width / 2;
if(x - sprite_width / 2 < 0) x = 0 +  sprite_width / 2;
if(y + sprite_height /2 > room_height) y = room_height - sprite_height / 2;
if(y - sprite_height/2 < 0) y = 0 + sprite_height / 2;