/// @description Insert description here
// You can write your code in this editor

spd = 4.0;
startedjump = false;
jumpfinished = false;
jumpsize = 50;
jumpspeed = 0.4;


//Spin variables
spinin = false;
spinout = false;
spunout = false;
spinspeed = 0.3;
spinsize = 7;
spins = 3;
var frames = (spins * 2 * pi) / spinspeed;
var distance = 70;
oldxdelta = distance / frames;
teledhoopa = false;
teledhoopb = false;

//Fade
fader = instance_create_layer(x, y, "Effects", obj_fade);
with(fader) followobj = other;