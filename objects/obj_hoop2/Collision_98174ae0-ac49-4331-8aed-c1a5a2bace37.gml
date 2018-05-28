/// @description Insert description here
// You can write your code in this editor

not_collision = false
if(collided) exit;

if(obj_player.startedjump){
	with(obj_player){
		x = 697;
		y = 197;	
		startedjump = false;
		exit;
	}
}


collided = true;