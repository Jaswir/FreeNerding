/// @description Insert description here
// You can write your code in this editor

if(jumpfinished){
	x = obj_hoop_a.x;
	y = obj_hoop_a.y;
	jumpfinished = false;
	instance_create_layer(x, y, "Instances", obj_teleport);	
	instance_create_layer(obj_hoop_b.x, obj_hoop_b.y, "Instances", obj_teleport);
	audio_play_sound(snd_teleport, 1, false);
}
