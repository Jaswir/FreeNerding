/// @description Insert description here
// You can write your code in this editor

if(teledhoopa){
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

		fader.fade = 0.0;
		fader.fadeout = true;
		
		with(obj_hoop_a) image_index = 1;
		with(obj_hoop_b) image_index = 1;
	}
}