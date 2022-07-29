function scr_hover_find(search_direction, search_distance)
{

	// escape if there is nothing to find
	if search_distance > 1000
		exit
	
	// Increase search distance with each iteration
	search_distance += 20
	
// Search Up
	if search_direction == "up"
	{
		var new_hover = instance_nearest(my_hover.x, my_hover.y - search_distance, obj_block)
		
		if new_hover == my_hover
		{
			scr_hover_find("up", search_distance)
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y - my_hover.sprite_height/2 - 20
			exit
		}
	}

// Search Down
	if search_direction == "down"
	{
		var new_hover = instance_nearest(my_hover.x, my_hover.y + search_distance, obj_block)
		
		if new_hover == my_hover
		{
			scr_hover_find("down", search_distance)
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y - my_hover.sprite_height/2 - 20
			exit
		}
	}

// Search Left
	if search_direction == "left"
	{
		var new_hover = instance_nearest(my_hover.x - search_distance, my_hover.y, obj_block)
		
		if new_hover == my_hover
		{
			scr_hover_find("left", search_distance)
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y - my_hover.sprite_height/2 - 20
			exit
		}
	}
	
// Search Right
	if search_direction == "right"
	{
		var new_hover = instance_nearest(my_hover.x + search_distance, my_hover.y, obj_block)
		
		if new_hover == my_hover
		{
			scr_hover_find("right", search_distance)
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y - my_hover.sprite_height/2 - 20
			exit
		}
	}
}