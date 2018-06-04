//Win
draw_set_colour(c_white);
draw_set_font(fnt_win);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height*0.25, "You Win!" );

//Restart
draw_set_font(fnt_score);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width*0.75, room_height*0.05, "(R) restart");


//Thanks
//Continue
draw_set_font(fnt_thanks);

draw_set_alpha(fade);
fade+= fDelta
if(fade >= 1 || fade < 0){
	fDelta *= -1;
}
draw_text(room_width/2, room_height*0.85, "thanks for playing!" );
draw_set_alpha(1.0);