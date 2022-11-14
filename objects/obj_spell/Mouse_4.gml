
// If we're flipping, don't interact
if flip != "nothing" || path_index > 0 || image_index == 0
	exit;

// If we have this spell already selected, use it to attack
if selected == true
{
	// Set hand space to zero
	obj_battle_ctrl.hand_array[hand_position] = 0
		
	array_push(obj_battle_ctrl.discard_array, image_index)
	
	// Delete spell
	flip = "spinning"
	path_start(path_up, 4, path_action_stop, false)
}

// "if the spell you've chosen is not currently selected"
if selected == false
{
	// Deselect all other cards
	scr_deselect()
		
	// Then select the clicked spell
	path_start(path_up_spell, 15, path_action_stop, false)
	selected = true
}

