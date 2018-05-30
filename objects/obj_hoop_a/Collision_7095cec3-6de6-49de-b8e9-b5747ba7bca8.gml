/// @description Insert description here
// You can write your code in this editor

//First teleport
if(!firstenter){
	firstenter = true;	
	with(obj_player){
		x = obj_hoop_b.x;
		y = obj_hoop_b.y;
	}
	
	exit;
}

//Next teleports
entered = true;
left = false;

if(hasleft){
	
	with(obj_player){
		x = obj_hoop_b.x;
		y = obj_hoop_b.y;
	}
	
	hasleft = false;
	entered = false;
}