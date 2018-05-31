/// @description Insert description here
// You can write your code in this editor


if(teledhoopb){
	if(spunout) exit;
	if(spinout) exit;
	spinout = true;	
	oldx = x;
	oldy = y;
	i = 0;
}
else{
	if(spinin) exit;
	if(jumpfinished){
		jumpfinished = false;
		spinin = true;	
		oldx = x;
		oldy = y;
		i = 0;

	}
}

		
//if(teleport){
//	x = obj_hoop_a.x;
//	y = obj_hoop_a.y;
//	teleport = false;
//	instance_create_layer(x, y, "Instances", obj_teleport);	
//	instance_create_layer(obj_hoop_b.x, obj_hoop_b.y, "Instances", obj_teleport);
//	audio_play_sound(snd_teleport, 1, false);
//}
