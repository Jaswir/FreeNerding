/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left)){
	showkeyboard = true;
	alarm[0] = help_displaytime;
}

if(keyboard_check_pressed(vk_space)) showkeyboard = false;
if(keyboard_check_pressed(vk_left))	showkeyboard = false;
if(keyboard_check_pressed(vk_right)) showkeyboard = false;
if(keyboard_check_pressed(vk_up)) showkeyboard = false;
if(keyboard_check_pressed(vk_down)) showkeyboard = false;