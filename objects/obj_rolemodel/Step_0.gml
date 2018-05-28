/// @description Insert description here
// You can write your code in this editor

if(startedjump){
	i-= jumpspeed;
	x = oldx + jumpsize - cos(i) * jumpsize;	
	y = oldy + sin(i) * jumpsize;	
}
if (walknormal){
	x += 5;		
	if ( x > room_width) instance_destroy();
}