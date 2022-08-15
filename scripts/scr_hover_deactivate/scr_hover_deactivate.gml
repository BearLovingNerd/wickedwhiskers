function scr_hover_deactivate(my_hover)
{

// Nothing
	if my_hover.type == type.nothing
	{
		// Do Nothing!!	
	}

// Town
if my_hover.type == type.town
	{
		
		// Navigation Button
		if my_hover.town_type == town_type.navigation
		{
			my_hover.image_index = 0
			exit;
		}
		
		// Equip Button
		if my_hover.town_type == town_type.gun_equip
		{
			my_hover.image_index = 0
			exit;
		}
		
	}

// Battle
	if my_hover.type == type.battle
	{
		
		// Enemy
		if my_hover.battle_type == battle_type.enemy
		{
			with my_hover
				if image_xscale == 1.3
				{
					image_xscale -= .3
					image_yscale -= .3
				}
		}
		
		// Playing Card
		if my_hover.battle_type == battle_type.card
		{
			with my_hover
			{	
				if y == 280 && selected == false
				{
					path_start(path_down, 4, path_action_stop, false)
					layer = layer_get_id("UI")
				}
			}
			exit;
		}
		
	}

// Map
	if my_hover.type == type.map
	{
		// Navigation Button
		if my_hover.map_type == map_type.battle
		{
			my_hover.image_index = 0
			exit;
		}
	}


}