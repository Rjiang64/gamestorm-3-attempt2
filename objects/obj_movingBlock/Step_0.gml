/// @description Insert description here
// You can write your code in this editor



// Step Event
// Create Event

// Step Event
if (keyboard_check_pressed(vk_space)) {
    is_moving = !is_moving; 
    show_debug_message("is_moving: " + (is_moving ? "true" : "false"));
}

// Only move if is_moving is true
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
} else {
    show_debug_message("Movement is OFF, y: " + string(y)); // Debugging line when movement is off
}
