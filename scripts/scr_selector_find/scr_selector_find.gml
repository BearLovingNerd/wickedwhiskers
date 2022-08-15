function scr_selector_find(search_direction, search_distance)
{
	
	// freeze control for a split second
	obj_controller.freeze_cntrl = true
	obj_controller.alarm[0] = 8
	
	// deactivate all other instances
	with obj_block
	{
		scr_hover_deactivate(id)	
	}
	
	// escape if there is nothing to find
	if search_distance > room_width
		exit;
	
	// Increase search distance with each iteration
	search_distance += 20
	
// Nothing
	if search_direction == "nothing"
	{
		// Jumps to the controller object which has a "nothing" type bound to it
		my_hover = instance_nearest(x, y, obj_controller)
		exit;
	}
	
// Search closest/center
	if search_direction == "center"
	{
		// Used to jump to instance truly closest
		my_hover = instance_nearest(x, y, obj_block)
		x = my_hover.x
		y = my_hover.y
		scr_hover_activate(my_hover)
		exit;
	}
	
// Search Up
	if search_direction == "up"
	{
		// Find closest instance above me
		var new_hover = instance_nearest(x, y - search_distance, obj_block)
	
		// If new hover is my_hover, or is below me, keep looking
		if (new_hover == my_hover) || (new_hover.y > y) 
		{
			scr_selector_find("up", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			scr_hover_activate(my_hover)
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}

// Search Down
	if search_direction == "down"
	{
		// Find closest instance below me
		var new_hover = instance_nearest(x, y + search_distance, obj_block)
		
		// If new hover is my_hover, or is above me, keep looking
		if (new_hover == my_hover) || (new_hover.y < y)
		{
			scr_selector_find("down", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			scr_hover_activate(my_hover)
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}

// Search Left
	if search_direction == "left"
	{
		// Find closest instance to the left
		var new_hover = instance_nearest(x - search_distance, y, obj_block)
		
		// If new hover is my_hover, or is on my right, keep looking
		if (new_hover == my_hover) || (new_hover.x > x)
		{
			scr_selector_find("left", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			scr_hover_activate(my_hover)
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}
	
// Search Right
	if search_direction == "right"
	{
		// Find closest instance to the right
		var new_hover = instance_nearest(x + search_distance, y, obj_block)
		
		// If new hover is my_hover, or is on my left, keep looking
		if (new_hover == my_hover) || (new_hover.x < x)
		{
			scr_selector_find("right", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			scr_hover_activate(my_hover)
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}
}