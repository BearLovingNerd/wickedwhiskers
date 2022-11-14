function scr_stack1(my_hover)
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

// FRONT ----------------------------------------
	
	if my_hover == frontleft
	{
		// Create a card and stack it
		var new_card = instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[0], "UI", obj_minicard)
		
		with new_card
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Add card to array
			array_push(val_array, new_card)
			
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				// Deal damage, reset value, and empty cards
				hp -= crit
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
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
			else if value > 9
			{
				// Bust, reset value, and empty cards
				obj_battle_ctrl.bust += 1
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
				// Lose all bet Chips
				with obj_battle_ctrl
				{
					// Reset chips bet
					chips_bet = 0
				}
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.frontstack[0] += offset
		exit;
	}
	
	if my_hover == frontcenter
	{
		// Create a card and stack it
		var new_card = instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[1], "UI", obj_minicard)
		
		with new_card
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Add card to array
			array_push(val_array, new_card)
			
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				// Deal damage, reset value, and empty cards
				hp -= crit
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
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
			else if value > 9
			{
				// Bust, reset value, and empty cards
				obj_battle_ctrl.bust += 1
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
				// Lose all bet Chips
				with obj_battle_ctrl
				{
					// Reset chips bet
					chips_bet = 0
				}
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.frontstack[1] += offset
		exit;
	}
	
	if my_hover == frontright
	{
		// Create a card and stack it
		var new_card = instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[2], "UI", obj_minicard)
		
		with new_card
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Add card to array
			array_push(val_array, new_card)
			
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				// Deal damage, reset value, and empty cards
				hp -= crit
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
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
			else if value > 9
			{
				// Bust, reset value, and empty cards
				obj_battle_ctrl.bust += 1
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
				// Lose all bet Chips
				with obj_battle_ctrl
				{
					// Reset chips bet
					chips_bet = 0
				}
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.frontstack[2] += offset
		exit;
	}
	

// BACK -------------------------------------------
	
	if my_hover == backleft
	{
		// Create a card and stack it
		var new_card = instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.frontstack[0], "UI", obj_minicard)
		
		with new_card
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Add card to array
			array_push(val_array, new_card)
			
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				// Deal damage, reset value, and empty cards
				hp -= crit
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
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
			else if value > 9
			{
				// Bust, reset value, and empty cards
				obj_battle_ctrl.bust += 1
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
				// Lose all bet Chips
				with obj_battle_ctrl
				{
					// Reset chips bet
					chips_bet = 0
				}
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.backstack[0] += offset
		exit;
	}

	if my_hover == backcenter
	{
		// Create a card and stack it
		var new_card = instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.backstack[1], "UI", obj_minicard)
		
		with new_card
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Add card to array
			array_push(val_array, new_card)
			
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				// Deal damage, reset value, and empty cards
				hp -= crit
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
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
			else if value > 9
			{
				// Bust, reset value, and empty cards
				obj_battle_ctrl.bust += 1
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
				// Lose all bet Chips
				with obj_battle_ctrl
				{
					// Reset chips bet
					chips_bet = 0
				}
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.backstack[1] += offset
		exit;
	}
	
	if my_hover == backright
	{
		// Create a card and stack it
		var new_card = instance_create_layer(my_hover.x, my_hover.y + 32 + obj_battle_ctrl.backstack[2], "UI", obj_minicard)
		
		with new_card
		{
			value = atk_power
			image_index = value	
		}
        
		with my_hover
		{
			// Add card to array
			array_push(val_array, new_card)
			
			// Increase enemy stack value
			value += atk_power
		
			// Check enemy value
			if value == 9
			{
				// Deal damage, reset value, and empty cards
				hp -= crit
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
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
			else if value > 9
			{
				// Bust, reset value, and empty cards
				obj_battle_ctrl.bust += 1
				value = 0
				repeat(array_length(val_array))
				{
					with val_array[0]
					{
						instance_destroy()
					}
				}
				
				// Lose all bet Chips
				with obj_battle_ctrl
				{
					// Reset chips bet
					chips_bet = 0
				}
			}
		}
		
		// Increase battle control offset
		obj_battle_ctrl.backstack[2] += offset
		exit;
	}
}