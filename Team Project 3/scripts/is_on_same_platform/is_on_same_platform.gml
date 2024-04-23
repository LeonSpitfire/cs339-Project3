// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_on_same_platform(x,y, step = 10){
	dist = point_distance(x,y,oParentPlayer.x, oParentPlayer.y)
	dir = point_direction(x,y, oParentPlayer.x, oParentPlayer.y)
	
	current_dist_check = 0
	isOnSame = true
	step = 10
	
	i = 1
	_x = lengthdir_x(step,dir)
	
	if(abs(y-oParentPlayer.y) > sprite_height){
		isOnSame = false
	}
	
	while(current_dist_check < dist && isOnSame){
		if(!check_vertical_line_collision(x+_x *i,y,x+_x* i, y + sprite_height,oWall)){
			isOnSame = false
			break
		}
		current_dist_check += step
		i++
	}
	return isOnSame
	
}