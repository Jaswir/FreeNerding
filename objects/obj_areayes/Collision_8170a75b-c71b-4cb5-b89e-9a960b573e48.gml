/// @description Insert description here
// You can write your code in this editor


if(obj_player.jumpfinished){
	obj_player.jumpfinished = false;
	with(obj_rolemodel){
		shakeyes = true;
		instance_destroy(obj_areano);
		
	}	
}

