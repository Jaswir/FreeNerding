/// @description Insert description here
// You can write your code in this 

if(showkeyboard) draw_self();

//Score
draw_set_colour(c_white);
draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width * 0.8, room_height*0.05, "Score: " + string(score));


