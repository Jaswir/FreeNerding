/// @description Insert description here
// You can write your code in this editor

if(teledhoopb){
	if(spinout) exit;
	teledhoopb = false;
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

		//Teleport effect
		audio_play_sound(snd_teleport, 1, false);
		fader.fade = 0.0;
		fader.fadeout = true;
		
		with(obj_hoop_a) image_index = 1;
		with(obj_hoop_b) image_index = 1;
	}
}

