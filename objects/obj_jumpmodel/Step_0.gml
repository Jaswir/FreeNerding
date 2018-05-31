/// @description Insert description here
// You can write your code in this editor


switch(state){
		
	case "spin":
		if(!startedspin){	
			oldx = x;
			oldy = y;
			startedspin = true;	
			i = 0;
		}
		
		i-= spinspeed;
		x = oldx - spinsize - cos(i) * spinsize;	
		y = oldy + sin(i) * spinsize;
		
		if(abs(i) >= spinduration){
			startedspin = false;
			alarm[1] = spinduration;
			state = "neutral";

		}
		
		break;
		
	case "spin2":
		if(!startedspin){	
			oldx = x;
			oldy = y;
			startedspin = true;	
			i = 0;
		}
		
		i-= spinspeed;
		x = oldx + spinsize - cos(i) * spinsize;	
		y = oldy + sin(i) * spinsize;
		
		if(abs(i) >= spinduration){
			startedspin = false;
			if(place_meeting(x, y, obj_hoop_a)) alarm[5] = spinduration;
			else alarm[2] = spinduration;
			
			state = "neutral";
			

		}
		
		break;
		
	case "move back":
		
		move_towards_point(577, 192, 2.0);	
		if(distance_to_point(577, 192) <= 0){
			
			alarm[0] = teleportresttime;
			speed = 0;
			state = "neutral";
		}
		break;
		
		
	case "move back 2":
		
		move_towards_point(781, 368, 1.0);	
		if(distance_to_point(781, 368) <= 0){
			
			alarm[4] = teleportresttime;
			speed = 0;
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
			
			
			//spin
			state = "spin";
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
			
			//spin
			state = "spin";
			alarm[11] = 5;
		}
		break;
}
