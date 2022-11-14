function scr_stack(target)
{
	// Do nothing if we have no shots left
	if obj_battle_ctrl.bullets_remaining == 0
		exit;
	
	// If cards are still reloading
	if obj_chamber.turning != "stop"
		exit;
	
	// Iterate through available number
	var card_used = irandom(obj_battle_ctrl.bullets_remaining-1)
	
	with obj_battle_ctrl.chamber_numbers[card_used]
	{
		// Move card down and remove it from the array
		path_start(path_down, 8, path_action_stop, false)
		with my_num
			path_start(path_down, 10, path_action_stop, false)
		array_delete(obj_battle_ctrl.chamber_numbers, card_used, 1)
			
		// Remove a bullet from the chamber
		obj_battle_ctrl.bullets_remaining -= 1
			
		// Adjust chamber image to rotate and display less bullets
		scr_rotate_60()
		
		// Add value to enemy
		with target.value_counter
		{
			target_value += other.my_num.image_index
			scr_check_value(target, other.my_num.image_index)
		}
	}
}