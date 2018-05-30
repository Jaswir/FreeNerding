/// @description Insert description here
// You can write your code in this editor

entered = true;
left = false;

if(hasleft){
	
	with(obj_player){
		if(jumpfinished){
			x = obj_hoop_a.x;
			y = obj_hoop_a.y;
			jumpfinished = false;
			other.hasleft = false;
			other.entered = false;
		}
	}
}