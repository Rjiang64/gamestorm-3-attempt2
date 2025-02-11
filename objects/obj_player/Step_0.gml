/// @description Insert description here
// You can write your code in this editor

ysp += 0.2
xsp=0

if keyboard_check(vk_left){
	xsp = -4
}

if keyboard_check(vk_right){
	xsp = +4
}

if place_meeting(x,y+1, obj_block){
	ysp=0
	if keyboard_check(vk_up){
		ysp=-6
	}
}

move_and_collide (xsp, ysp, obj_block)


if place_meeting(x, y, obj_flag){
    show_message("You Win!");
    game_end(); 
}

if place_meeting(x,y,obj_death){
	room_restart()
}

if place_meeting(x,y,obj_bird){
	room_restart()
}