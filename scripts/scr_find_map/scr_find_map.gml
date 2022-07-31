function scr_find_map(my_hover)
{
	
	// Define types
	enum map_type
	{
		nothing,
		battle,
	}

	if my_hover.map_type == map_type.nothing
	{
		// do nothing!
		exit;
	}
	
	if my_hover.map_type == map_type.battle
	{
		// Freeze Control
		obj_controller.freeze_cntrl = true
		
		// Transition Screen
		scr_battle_transition()
		
		// Set alarm to change room
		my_hover.alarm[0] = 100
		exit;
	}

}