/// @description Left jump
// You can write your code in this editor

i -= jumpspeed;
x = oldx - jumpradius + cos(i) * jumpradius;
y = oldy + sin(i) * jumpradius;
if(abs(i) >= 3.14){
	leftjumping = false;
	jumping = false;
	jumpfinished = true;
	alarm[1] = 5;
}

