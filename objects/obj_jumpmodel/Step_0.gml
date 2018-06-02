/// @description Insert description here
// You can write your code in this editor
if(spinin){
		
	i-= spinspeed;
	x = oldx - spinsize - cos(i) * spinsize;	
	y = oldy + sin(i) * spinsize;
	
	
	if(abs(i) >= spins  * pi){
		spinin = false;
		alarm[1] = fader.fadeFrames;
	}
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
		spunout = true;
		spinout = false;
		alarm[2] = 10;
	}
}

switch(state){
		
		
	case "move back":
		
		move_towards_point(567, 192, 2.0);	
		if(distance_to_point(567, 192) <= 0){
			
			alarm[0] = teleportresttime;
			speed = 0;
			teledhoopa = false;
			teledhoopb = false;
			spunout = false;
			state = "neutral";
		}
		break;
		
		
	case "move back 2":
		
		move_towards_point(781, 368, 1.0);	
		if(distance_to_point(781, 368) <= 0){
			
			alarm[4] = teleportresttime;
			speed = 0;
			teledhoopa = false;
			teledhoopb = false;
			spunout = false;
			state = "neutral";
		}
		break;
	
		
	case "jump" :
		if(!startedjump){	
			oldx = x;
			oldy = y;
			startedjump = true;	
			jumpfinished = false;
			i = 0;
		}
		
		i-= jumpspeed;
		x = oldx + jumpsize - cos(i) * jumpsize;	
		y = oldy + sin(i) * jumpsize;
		if(abs(i) >= 3.14){
			startedjump = false;
			jumpfinished = true;
				
			//neutral
			state = "neutral";
			alarm[11] = 5;
		}
		break;
		
		case "jump2" :
		if(!startedjump){	
			oldx = x;
			oldy = y;
			startedjump = true;	
			jumpfinished = false;
			i = 0;
		}
		
		i-= jumpspeed;
		x = oldx - jumpsize + cos(i) * jumpsize;	
		y = oldy + sin(i) * jumpsize;
		if(abs(i) >= 3.14){
			startedjump = false;
			jumpfinished = true;
			
			//neutral
			state = "neutral";
			alarm[11] = 5;
		}
		break;
}
