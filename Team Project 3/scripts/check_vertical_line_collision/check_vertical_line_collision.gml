// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_vertical_line_collision(from_x,from_y,to_x,to_y,objs){
	return collision_line(from_x, from_y, to_x, to_y, objs, false, true) != noone

}