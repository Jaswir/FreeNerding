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


//Jump
if(keyboard_check_pressed(vk_space) || startedjump){
		
	if(!startedjump){	
		oldx = x;
		oldy = y;
		startedjump = true;	
		i = 0;
		
		audio_play_sound(snd_jump, 1, false);
	}
		
	i-= jumpspeed;
	if(leftdown) x = oldx - jumpsize + cos(i) * jumpsize;
	else x = oldx + jumpsize - cos(i) * jumpsize;	
	y = oldy + sin(i) * jumpsize;
	if(abs(i) >= 3.14) startedjump = false;
		
	

}
	




	