/// @desc GUI/Menu Set-up

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width //+ 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;

//Lower the number, faster the speed
menu_speed = 25;
menu_font = fTitle;
menu_itemheight = font_get_size(fTitle);
menu_commited = -1;
menu_control = true;

//Array having different menu choices for player
menu[2] = "New Game";
menu[1] = "Controls";
menu[0] = "Quit";

//A way to keep adding more items easier
menu_items = array_length(menu);
menu_cursor = 2;
//Sets speed of cursor on menu to scroll faster or slower
//Lower to 0, quicker it gets and 0.2 is good middle
menu_cursor_speed = 0.3;
// menu music
audio_play_sound(menu_music, 0.5, true);


