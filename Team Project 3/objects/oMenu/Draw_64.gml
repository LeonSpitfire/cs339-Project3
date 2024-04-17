/// @desc Draw Menu
draw_set_font(fTitle);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

//For loop
for(var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	
	if(menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		//Color of the menu item being drawn
		var col = c_white;
	}
	else
	//If not the one we want or is selected
	{
		var col = c_gray;
	}
	
	//Where we want to draw the text
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	
	//Actually drawing it
	//Blank outline
	draw_set_color(c_black);
	draw_text(xx- offset,yy,txt);
	draw_text(xx+ offset,yy,txt);
	draw_text(xx,yy - offset,txt);
	draw_text(xx,yy + offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
}