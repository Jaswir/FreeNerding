/// @description Insert description here
// You can write your code in this editor

not_collision = false
if(collided) exit;

if(obj_player.startedjump){
	with(obj_player){
		x = 100;
		y = 100;	
		startedjump = false;
		exit;
	}
}


collided = true;