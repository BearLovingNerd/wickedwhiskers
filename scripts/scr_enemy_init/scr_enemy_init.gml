function scr_enemy_init(position_chance, unit_id)
{
	// Positional Variables
	var   left = random_range(160, 200)
	var center = random_range(300, 340)
	var  right = random_range(440, 480)
	
	var front = irandom_range(120, 140)
	var  back = irandom_range(50, 70)
	
	
	// a greater position_chance means you're more likely to be in the front line
	var spawn_advantage = irandom_range(1, 10)
	
	// if spawn_advantage is less than our unit's position chance...
	if spawn_advantage < position_chance
	{
		// Search for empty place to be
		var check_frontrow = irandom(2)
		
		if obj_battle_ctrl.frontrow[check_frontrow] == 0
		{
			// Pass unit ID to battle control array
			obj_battle_ctrl.frontrow[check_frontrow] = unit_id
			
			// Move unit to correct position and layer
			if check_frontrow = 0
			{
				with unit_id
				{
					x = left
					y = front
					layer = layer_get_id("fr_units")
				}
			}
			else if check_frontrow = 1
			{
				with unit_id
				{
					x = center
					y = front
					layer = layer_get_id("fr_units")
				}
			}
			else if check_frontrow = 2
			{
				with unit_id
				{
					x = right
					y = front
					layer = layer_get_id("fr_units")
				}
			}
		}
		else
		{
			with unit_id
			{
				scr_enemy_init(position_chance, unit_id)
			}
		}
	}
	// Else if spawn chance is greater than position_chance, spawn in backrow
	else
	{
		// Search for empty place to be
		var check_backrow = irandom(2)
		
		if obj_battle_ctrl.backrow[check_backrow] == 0
		{
			// Pass unit ID to battle control array
			obj_battle_ctrl.backrow[check_backrow] = unit_id
			
			// Move unit to correct position and layer
			if check_backrow = 0
			{
				with unit_id
				{
					x = left
					y = back
					layer = layer_get_id("br_units")
				}
			}
			else if check_backrow = 1
			{
				with unit_id
				{
					x = center
					y = back
					layer = layer_get_id("br_units")
				}
			}
			else if check_backrow = 2
			{
				with unit_id
				{
					x = right
					y = back
					layer = layer_get_id("br_units")
				}
			}
		}
		else
		{
			with unit_id
			{
				scr_enemy_init(position_chance, unit_id)
			}
		}
	}
}