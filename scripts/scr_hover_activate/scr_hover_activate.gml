function scr_hover_activate(my_hover)
{
	
// Nothing
	if my_hover.type == type.nothing
	{
		// Do nothing!
		exit;
	}
	
// Town
	if my_hover.type == type.town
	{
		// Navigation Button
		if my_hover.town_type == town_type.navigation
		{
			my_hover.image_index = 1
			exit;
		}
		
		// Equip Button
		if my_hover.town_type == town_type.gun_equip
		{
			my_hover.image_index = 1
			exit;
		}
	}
	
// Battle
	if my_hover.type == type.battle
	{
		// Enemy
		if my_hover.battle_type == battle_type.enemy
		{
			if image_xscale == 1
				{
					image_xscale += .3
					image_yscale += .3
				}
		}
		
		// Playing Card
		if my_hover.battle_type == battle_type.card
		{
			with my_hover
			{
				if y == 300 && selected == false
				{
					// Move upwards and on top of layer
					path_start(path_up, 4, path_action_stop, false)
					layer = layer_get_id("UI_elevated")
				
					// If we're holding the select button, select any cards we hover
					if obj_controller.connected == true
					{
						if gamepad_button_check(obj_controller.pad_index, gp_face2)
							scr_battle_interact(id)
					}
					else
					{
						if keyboard_check(vk_enter) || keyboard_check(vk_space)
							scr_battle_interact(id)
					}
				}
			}
			exit;
		}
		
		// Next Thing
	}

// Map
	if my_hover.type == type.map
	{
		// Navigation Button
		if my_hover.map_type == map_type.battle
		{
			my_hover.image_index = 1
			exit;
		}
	}

}