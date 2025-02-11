/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space)) {
    is_moving = !is_moving; 
    }

if (is_moving) {
    if (moving_down) {
        y += move_speed; 
        if (y >= start_y + move_distance) {
            moving_down = false; 
        }
    } else {
        y -= move_speed; 
        if (y <= start_y) {
            moving_down = true; 
        }
    }
}