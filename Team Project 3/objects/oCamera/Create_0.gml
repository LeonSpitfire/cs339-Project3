/// @description Set-up Camera
cam = view_camera[0];
//Focuses the player
//Can use this for cutscenes and bosses
follow = oPlayer;
//The height of the camera 
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

global.debug = false