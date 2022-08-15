function scr_stack(my_hover)
{
	
	// Battle Position
	var frontleft   = obj_battle_ctrl.frontrow[0]
	var frontcenter = obj_battle_ctrl.frontrow[1]
	var frontright  = obj_battle_ctrl.frontrow[2]
	
	var backleft	= obj_battle_ctrl.backrow[0]
	var backcenter	= obj_battle_ctrl.backrow[1]
	var backright	= obj_battle_ctrl.backrow[2]
	
	// Card Placement
	var offset		= 15
	
	// Player stats
	var atk_power	= obj_player.atk_power[irandom(5)]
	var crit		= obj_player.crit
	

// FRONT ----------------------------------------
	
	if my_hover == frontleft
	{
		// Create a card and stack it
		with instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[0], "UI", obj_minicard)
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				hp -= crit
				value = 0
			}
			else if value > 9
			{
				obj_battle_ctrl.bust += 1
				value = 0
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.frontstack[0] += offset
		exit;
	}
	
	if my_hover == frontcenter
	{
		with instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[1], "UI", obj_minicard)
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				hp -= crit	
			}
			else if value > 9
			{
				obj_battle_ctrl.bust += 1	
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.frontstack[1] += offset
		exit;
	}
	
	if my_hover == frontright
	{
		with instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[2], "UI", obj_minicard)
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				hp -= crit	
			}
			else if value > 9
			{
				obj_battle_ctrl.bust += 1	
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.frontstack[2] += offset
		exit;
	}
	

// BACK -------------------------------------------
	
	if my_hover == backleft
	{
		with instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[0], "UI", obj_minicard)
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				hp -= crit	
			}
			else if value > 9
			{
				obj_battle_ctrl.bust += 1	
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.backstack[0] += offset
		exit;
	}

	if my_hover == backcenter
	{
		with instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.backstack[1], "UI", obj_minicard)
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				hp -= crit	
			}
			else if value > 9
			{
				obj_battle_ctrl.bust += 1	
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.backstack[1] += offset
		exit;
	}
	
	if my_hover == backright
	{
		with instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.backstack[2], "UI", obj_minicard)
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				hp -= crit	
			}
			else if value > 9
			{
				obj_battle_ctrl.bust += 1	
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.backstack[2] += offset
		exit;
	}
}