/// @description Teleport
// You can write your code in this editor


if(place_meeting(x, y, obj_hoop_a)){
	hoopto = obj_hoop_b;
	teledhoopb = true;
}
if(place_meeting(x, y, obj_hoop_b)){
	hoopto = obj_hoop_a;
	teledhoopa = true;
}
if(place_meeting(x, y, obj_hoop_c)){
	hoopto = obj_hoop_d;
	teledhoopc = true;
}
if(place_meeting(x, y, obj_hoop_d)){
	hoopto = obj_hoop_c;
	teledhoopd = true;
}


x = hoopto.x;
y = hoopto.y;	

//Fade out
fader.fade = 0.0;
fader.fadein = true;





