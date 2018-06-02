/// @description Insert description here
// You can write your code in this editor


//Normal movement
var leftdown = false;
if(keyboard_check(vk_left)) {
	x -= spd;	
	leftdown = true;
}
if(keyboard_check(vk_right)) x += spd;	
if(keyboard_check(vk_up))  y -= spd;
if(keyboard_check(vk_down)) y += spd;

if(spinin){
		
	i-= spinspeed;
	x = oldx - spinsize - cos(i) * spinsize;	
	y = oldy + sin(i) * spinsize;
	
	
	if(abs(i) >= spins  * pi){
		spinin = false;
		alarm[2] = fader.fadeFrames;
	}
	exit;
}

if(spinout){
		
	i-= spinspeed;
	x = oldx - spinsize - cos(i) * spinsize;	
	y = oldy - sin(i) * spinsize;
	
	
	var dis_a = distance_to_object(obj_hoop_a);
	var dis_b = distance_to_object(obj_hoop_b);
	if(dis_a < dis_b)
		oldx -= oldxdelta / 2;
	else
		oldx += oldxdelta;
	
	if(abs(i) >= spins * 2 * pi){		
		spinout = false;
	}
	exit;
}

//Jump
if(keyboard_check_pressed(vk_space) || startedjump){
		
	if(!startedjump){	
		oldx = x;
		oldy = y;
		startedjump = true;	
		jumpfinished = false;
		i = 0;
		
		audio_play_sound(snd_jump, 1, false);
	}
		
	i-= jumpspeed;
	if(leftdown) x = oldx - jumpsize + cos(i) * jumpsize;
	else x = oldx + jumpsize - cos(i) * jumpsize;	
	y = oldy + sin(i) * jumpsize;
	if(abs(i) >= 3.14){
		startedjump = false;
		jumpfinished = true;
		alarm[1] = 5;
	}
		
	

}
	
	





	