/// @description Update camera

//Update the Destination(xTo and yTo)
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
//Where the camera should be and move the rectangle to be where oCamera is
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Making sure the cam can't see outside room for advantages or bugs
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//Update Camera-view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

/*if(room != rMenu) && (room != rEnding)
{
	if(layer_exists("Trees"))
	{
		layer_x("Trees", x/4);
	}
} */