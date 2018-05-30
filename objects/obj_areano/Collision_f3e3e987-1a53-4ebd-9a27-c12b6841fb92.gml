/// @description Insert description here
// You can write your code in this editor


if(obj_player.jumpfinished){
	obj_player.jumpfinished = false;
	with(obj_rolemodel){
		shakeno = true;
		alarm[0] = shakeduration;
		
	}	
}

obj_rolemodel.shakeyes = false;