/// @description Insert description here
// You can write your code in this editor

if(startedjump){
		x = 600;
		y = obj_spawnend.y;	
		startedjump = false;
		move_towards_point(obj_spawnend.x, obj_spawnend.y, 3.0);
		exit;
}
