function scr_stack2(my_hover)
{
	// Player stats
	var atk_power	= obj_player.atk_power[irandom(5)]
	var crit		= obj_player.crit
	var cost		= obj_player.cost
	
	// Bet Chips
	with obj_battle_ctrl
	{
		// bet chips
		chips_bet += cost
		
		// adjust counter
		with chip_counter
		{
			chips -= cost
		}
	}
	
	// Create a card
	var new_card = instance_create_layer(my_hover.x, my_hover.stack_y, "UI", obj_minicard)
		
	// Set value and image
	with new_card
	{
		value = atk_power
		image_index = value	
	}
    
	// Add to enemy array and stack
	with my_hover
	{
		// Add card to array
		array_push(val_array, new_card)
			
		// Increase enemy stack value
		value += atk_power
		
		// Increase stack_y offset
		stack_y += 15
		
		
	// --- Check Enemy Value ---

		// NINEJACK
		if value == 9
		{
			// Deal damage and reset value, stack, and stack_y
			obj_battle_ctrl.ninejack += 1
			hp -= crit
			value = 0
			stack_y = y + 35
			
			// delete all cards
			var i = 0
			repeat(array_length(val_array))
			{
				with val_array[i]
				{
					instance_destroy()
					
				}
				
				i ++
			}
			
			// Resize array to nothing
			array_resize(val_array, 0)
			
			// Reset Chips
			with obj_battle_ctrl
			{
				// Refund chips
				with chip_counter
				{
					chips += obj_battle_ctrl.chips_bet	
				}
					
				// Reset chips bet
				chips_bet = 0
			}
		}
		
		// BUST
		else if value > 9
		{
			// Bust and reset value, stack, and stack_y
			obj_battle_ctrl.bust += 1
			value = 0
			stack_y = y + 35
			
			// delete all cards
			var i = 0
			repeat(array_length(val_array))
			{
				with val_array[i]
				{
					instance_destroy()
					
				}
				
				i ++
			}
			
			// Resize array to nothing
			array_resize(val_array, 0)
				
			// Lose all bet Chips
			with obj_battle_ctrl
			{
				// Reset chips bet
				chips_bet = 0
			}
		}
	}
}