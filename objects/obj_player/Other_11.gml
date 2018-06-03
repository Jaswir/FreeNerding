/// @description Right jump
// You can write your code in this editor

i -= jumpspeed;
x = oldx + jumpradius - cos(i) * jumpradius;
y = oldy + sin(i) * jumpradius;

if(place_meeting(x, y, obj_boundary)){
	rightjumping = false;
}


if(abs(i) >= 3.14){
	rightjumping = false;		
	jumpfinished = true;
	alarm[1] = 5;
}