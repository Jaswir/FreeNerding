/// @description Jump down
// You can write your code in this editor

i -= jumpspeed;
x = oldx  - cos(i - degtorad(90)) * jumpradius;
y = oldy + jumpradius - sin(i + degtorad(90)) * jumpradius;
if(abs(i) >= 3.14){
	jumpingdown = false;
	jumping = false;
	jumpfinished = true;
	alarm[1] = 5;
}