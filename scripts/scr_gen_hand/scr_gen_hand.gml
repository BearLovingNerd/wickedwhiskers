function scr_gen_hand()
{	
	
	var i = 0
	
	// repeat for the length of battle control spell array
	repeat(array_length(obj_battle_ctrl.spell_array))
	{
		// Create a new_spell card
		var new_spell = instance_create_layer(x, 625, "UI", obj_spell)
		
		// Set Image
		new_spell.image_index = obj_battle_ctrl.spell_array[i]
		
		// Empty spell array slot
		array_delete(obj_battle_ctrl.spell_array, i, 1)
		
		// Find a place to put card
		with new_spell
		{
			if obj_battle_ctrl.hand_array[0] == 0
			{
				obj_battle_ctrl.hand_array[0] = new_spell
				new_spell.x = 600
			}
			else if obj_battle_ctrl.hand_array[1] == 0
			{
				obj_battle_ctrl.hand_array[1] = new_spell
				new_spell.x = 710
			}
			else if obj_battle_ctrl.hand_array[2] == 0
			{
				obj_battle_ctrl.hand_array[2] = new_spell
				new_spell.x = 820
			}
			else
			{
				show_message("Your hand is full!")
				array_push(obj_battle_ctrl.spell_array,new_spell.image_index)
				instance_destroy()
			}
		}
		
		i ++
	}
}