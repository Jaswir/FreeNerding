/// @description Insert description here
// You can write your code in this editor


switch(state){
	case "move":
	
		move_towards_point(obj_hoop_a.x, obj_hoop_a.y, 2.0);	
		if(distance_to_point(obj_hoop_a.x, obj_hoop_a.y) <= 0){
			state = "jump";
			speed = 0;
		}		
		
		break;
		
	case "move back":
		
		move_towards_point(577, 192, 2.0);	
		if(distance_to_point(577, 192) <= 0){
			
			state = startstates[irandom_range(0, 1)];
			speed = 0;
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
			if(place_meeting(x, y, obj_hoop_a)) state = "move back 2";
			else state = "move back";
			
			
			alarm[1] = 5;
		}
		break;
		
	case "move back 2":
		
		move_towards_point(781, 368, 2.0);	
		if(distance_to_point(787, 368) <= 0){
			
			state = endstates[irandom_range(0, 1)];
			speed = 0;
		}
		break;
	
	case "move2":
	
		move_towards_point(obj_hoop_b.x, obj_hoop_b.y, 2.0);	
		if(distance_to_point(obj_hoop_b.x, obj_hoop_b.y) <= 0){
			state = "jump2";
			
			speed = 0;
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
			
			if(place_meeting(x, y, obj_hoop_b)) state = "move back";
			else state = "move back 2";
			
			alarm[1] = 5;
		}
		break;
	
	
}
