function scr_check_value(target, damage_number)
{
	with target
	{
		// Create a damage bubble
		var damage_bubble = instance_create_layer(mouse_x + random_range(-60, 60), mouse_y + random_range(-60, 60), "UI_Effects", obj_damage_bubble)
			damage_bubble.my_num.image_index = damage_number

	// Under nine
		if value_counter.target_value < 9
		{
			// Change Bubble
			with damage_bubble
			{
				image_index = 0
				my_shadow.image_index = 1
				my_num.x += 0
				my_num.y -= 1
			}
		}
		
	// Bust
		if value_counter.target_value > 9
		{
			// Change Bubble
			with damage_bubble
			{
				image_index = 2
				my_shadow.image_index = 3
				my_num.x -= 3
				my_num.y -= 2
			}
			
			// Change Counters
			with hp_counter
			{
				my_num.image_index -= obj_battle_ctrl.bust
			}
			with value_counter
			{
				target_value = 0
				current_value = 0
				my_num.image_index = 0
			}

			// shake
			path_start(path_shake_small, 15, path_action_stop, false)
		}
		
	// Crit
		else if value_counter.target_value == 9
		{
			
			// Change Bubble
			with damage_bubble
			{
				image_index = 4
				my_shadow.image_index = 5
				my_num.x -= 0
				my_num.y -= 0
			}
			
			// Generate sparks
			repeat(2 + irandom(2))
			{
				with instance_create_layer(damage_bubble.x + random_range(-10, 10), damage_bubble.y + random_range(-10, 10), "UI_Effects", obj_damage_shadow)
				{
					image_index = 6
					falling = true
					direction_x = choose(random_range(1, 5), -random_range(1, 5))
					direction_y = random_range(12, 15)
				}
			}
			
			// Change Counters
			with hp_counter
			{
				my_num.image_index -= obj_battle_ctrl.crit
			}
			with value_counter
			{
				target_value = 0
				current_value = 0
				my_num.image_index = 0
			}
			
			// shake
			path_start(path_shake, 12, path_action_stop, false)
		}
		
		// Set alarm to increment number
		value_counter.alarm[0] = 1
	}
}