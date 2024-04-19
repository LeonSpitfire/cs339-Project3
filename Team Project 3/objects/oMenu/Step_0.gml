///@desc Control Menu
//Items come in
menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control) {
    if (keyboard_check_direct(vk_up) || gamepad_axis_value(0, gp_axislh) < -0.5) {
        menu_cursor++;
        if (menu_cursor >= menu_items) menu_cursor = 0;
        //Pause menu for seconds
        menu_control = false;
        alarm[0] = room_speed * menu_cursor_speed;
    }
    if (keyboard_check_direct(vk_down) || gamepad_axis_value(0, gp_axislh) > 0.5) {
        menu_cursor--;
        if (menu_cursor < 0) menu_cursor = menu_items - 1;
        //Pause for a second
        menu_control = false;
        alarm[0] = room_speed * menu_cursor_speed;
    }
    if (keyboard_check_direct(vk_enter) || gamepad_button_check(0, gp_face1)) {
        menu_x_target = gui_width + 200;
        if (menu_cursor == 1) //"Help"
        {
            show_help_instructions = true;
        } else {
            menu_commited = menu_cursor;
            menu_control = false;
        }
    }
}

if (menu_x > gui_width + 150) && (menu_commited != -1) {
    switch (menu_commited) {
        case 2:
        default:
            SlideTransition(TRANS_MODE.NEXT);
            break;
        case 0:
            game_end();
            break;
    }
}