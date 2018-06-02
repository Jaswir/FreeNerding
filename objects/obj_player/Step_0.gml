/// @description Insert description here
// You can write your code in this editor

//Movement
if(keyboard_check(vk_right)) x += spd;	
if(keyboard_check(vk_left))  x -= spd;	
if(keyboard_check(vk_up))    y -= spd;
if(keyboard_check(vk_down))  y += spd;


if(!jumping){
	
	//Scan
	if(keyboard_check_pressed(vk_space) && keyboard_check(vk_left)){
		leftjumping = true;
		oldx = x;
		oldy = y;
		i = 0;
		jumping = true;
	}
	
	else if(keyboard_check_pressed(vk_space) && keyboard_check(vk_up)){
		jumpingup = true;
		oldx = x;
		oldy = y;
		i = 0;
		jumping = true;
	}
	
	else if(keyboard_check_pressed(vk_space) && keyboard_check(vk_down)){
		jumpingdown = true;
		oldx = x;
		oldy = y;
		i = 0;
		jumping = true;
	}
	
	else if(keyboard_check_pressed(vk_space)){
		rightjumping = true;
		oldx = x;
		oldy = y;
		i = 0;
		jumping = true;
	}
}

//Assign right jump
if(jumping){
	
	if(leftjumping) event_user(0);
	if(rightjumping) event_user(1);
	if(jumpingup) event_user(2);
	if(jumpingdown) event_user(3);
	
}

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






	