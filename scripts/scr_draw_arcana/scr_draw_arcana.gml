function scr_draw_arcana()
{
	// If we're waiting for shuffle, exit
	if obj_battle_ctrl.alarm[0] > 0
		exit;
	
	// Shuffle if deck's empty
	if array_length(obj_battle_ctrl.spell_array) == 0
	{
		scr_shuffle()
		obj_battle_ctrl.alarm[0] = 28 + (14 * array_length(obj_battle_ctrl.spell_array))
		exit;
	}
	
	if obj_battle_ctrl.hand_array[0] == 0
	{
		var position = 0
	}
	else if obj_battle_ctrl.hand_array[1] == 0
	{
		var position = 1
	}
	else if obj_battle_ctrl.hand_array[2] == 0
	{
		var position = 2
	}
	else
	{
		show_message("Your hand is full!")
		exit;
	}
	
	// Create new spell
	var top_spell = obj_battle_ctrl.spell_array[0] 
	
	// Set Variables
	top_spell.x = 455
	top_spell.y = 625
	top_spell.depth -= position
	top_spell.hand_position = position
	top_spell.flip = "back turn"
	
	// Path spell
	with top_spell 
	{
		if position == 0
			path_start(path_hand_0, 10, path_action_stop, false)
		if position == 1
			path_start(path_hand_1, 15, path_action_stop, false)
		if position == 2
			path_start(path_hand_2, 20, path_action_stop, false)
	}
	
	// Adjust battle control arrays
	obj_battle_ctrl.hand_array[position] = top_spell
	array_delete(obj_battle_ctrl.spell_array, 0, 1)
}