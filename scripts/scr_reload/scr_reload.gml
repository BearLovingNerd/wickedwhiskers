function scr_reload()
{

	// Send bullets down to their death
	with obj_bullet_number
	{
		with my_num
		{
			path_start(path_down_super, 8, path_action_stop, false)	
		}
		path_start(path_down_super, 8, path_action_stop, false)
		alarm[1] = 60
	}
	
	// Recreate refilled chamber
	with obj_chamber
		instance_destroy();
	instance_create_layer(120, 593, "UI", obj_chamber)
	obj_battle_ctrl.bullets_remaining = 6
	
	var card_distance = 40
	var i = 0
	var timer_delay = 42
	
	// Spawn a number card and set image index
	repeat(6)
	{
		// Create card
		var new_card = instance_create_layer(card_distance, 525, "UI", obj_bullet_number)
		
		// Set image index, value, and timer delay
		with new_card
		{
			my_num.image_index = obj_battle_ctrl.atk_power[i]
			alarm[0] = timer_delay
			
			// Do a Deviance check, and change number accordingly
			if obj_battle_ctrl.accuracy <= random_range(0,100)
			{
				var random_deviance = irandom(1)
				image_index = random_deviance
				my_num.image_index += obj_battle_ctrl.deviance[random_deviance]
			}
			
			// Set chamber array
			array_set(obj_battle_ctrl.chamber_numbers, i, new_card)
		}
		
		// Increase card placement, iteration, and timer delay
		card_distance += 55
		i ++
		timer_delay += 7
	}
}