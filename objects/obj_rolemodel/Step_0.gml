/// @description Insert description here
// You can write your code in this editor

if(startedjump){
	i-= jumpspeed;
	x = oldx + jumpsize - cos(i) * jumpsize;	
	y = oldy + sin(i) * jumpsize;	
}
if (walknormal){
	x -= 3;		
	if ( x < 0) instance_destroy();
}