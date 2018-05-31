/// @description Insert description here
// You can write your code in this editor


if(fadein){
	followobj.image_alpha = lerp(0.0, 1.0, fade);
	fade+= fDelta;
	if(fade >= 1.0) fadein = false;
}

if(fadeout){
	followobj.image_alpha = lerp(1.0, 0.0, fade);
	fade+= fDelta
	if(fade >= 1.0) fadeout = false;
}


