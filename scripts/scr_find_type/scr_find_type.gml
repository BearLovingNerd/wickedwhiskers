function scr_find_type(my_hover, interaction)
{
	
	enum type 
	{
		nothing,
		town,
		battle,
		map,
	}
	
	if my_hover.type == type.nothing
	{
		// Do Nothing!!
		exit;
	}
	
	if my_hover.type == type.town
	{
		if interaction == "interact"
		{
			scr_town_interact(my_hover)
			exit;
		}	
		else if interaction == "hover activate"
		{
			scr_hover_activate(my_hover)
			exit;
		}
		else if interaction == "hover deactivate"
		{
			scr_hover_deactivate(my_hover)
			exit;
		}
	}
	
	if my_hover.type == type.battle
	{
		if interaction == "interact"
		{
			scr_battle_interact(my_hover)
			exit;
		}	
		else if interaction == "hover activate"
		{
			scr_hover_activate(my_hover)
			exit;
		}
		else if interaction == "hover deactivate"
		{
			scr_hover_deactivate(my_hover)
			exit;
		}
	}
	
	if my_hover.type == type.map
	{
		if interaction == "interact"
		{
			scr_map_interact(my_hover)
			exit;
		}	
		else if interaction == "hover activate"
		{
			scr_hover_activate(my_hover)
			exit;
		}
		else if interaction == "hover deactivate"
		{
			scr_hover_deactivate(my_hover)
			exit;
		}
		
	}
	
}