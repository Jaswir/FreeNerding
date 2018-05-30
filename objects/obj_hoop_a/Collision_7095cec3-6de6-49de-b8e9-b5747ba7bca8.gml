/// @description Insert description here
// You can write your code in this editor

//First teleport
if(!firstenter){
	
	with(obj_player){
		if(jumpfinished){
			x = obj_hoop_b.x;
			y = obj_hoop_b.y;	
			jumpfinished = false;
			other.firstenter = true;		
		}
	}
	
	exit;
}

//Next teleports
entered = true;
left = false;

if(hasleft){
	
	with(obj_player){
		if(jumpfinished){
			x = obj_hoop_b.x;
			y = obj_hoop_b.y;	
			jumpfinished = false;
			other.hasleft = false;
			other.entered = false;
		}
	}
	

}