/// @description Insert description here
// You can write your code in this editor


randomize();
state = "neutral";
startstates = []
startstates[0] = "move";
startstates[1] = "jump";
endstates = [];
endstates[0] = "move2";
endstates[1] = "jump2";
state = startstates[irandom_range(0, 1)];

spd = 4.0;
startedjump = false;
jumpfinished = false;
jumpsize = 50;
jumpspeed = 0.4;