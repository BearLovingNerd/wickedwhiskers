function scr_battle_interact(my_hover)
{
	
	// Return control
	obj_controller.freeze_cntrl = false
	
	// Define types
	enum battle_type
	{
		card,
		enemy,
	}
	
	if my_hover.battle_type == battle_type.card
	{
		// select the hovered card
		with my_hover
		{
			if selected == false
			{
				selected = true
				obj_battle_ctrl.sel_value += value
			}
			else 
			{
				selected = false
				obj_battle_ctrl.sel_value -= value
				scr_hover_deactivate(id)
			}
		}
	}
	
	if my_hover.battle_type == battle_type.enemy
	{
		scr_stack2(my_hover)	
	}
	/*
	if my_hover.battle_type == battle_type.enemy
	{
		// Deal damage based on selected cards
		my_hover.hp -= obj_battle_ctrl.sel_value
		
		// Reset selected value
		obj_battle_ctrl.sel_value = 0
		
		// Destroy all selected cards
		with obj_card
		{
			if selected == true
			{
				instance_destroy()	
			}
		}
		
		// Kill enemy if low enough
		if my_hover.hp <= 0
		{
			with my_hover
			{
				instance_destroy()
			}
		}
		exit;
	}
	*/
}