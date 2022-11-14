function scr_shuffle()
{
	var discard = obj_battle_ctrl.discard_array

	// Create a temporary array for the remaining cards
	var temp_array = []
	
	repeat(array_length(discard))
	{
		// Pick a random index from our current array
		var random_index = irandom(array_length(discard)-1)
	
		// Add that random index to our temp array
		array_push(temp_array, discard[random_index])
	
		// Delete spell from current array
		array_delete(discard, random_index, 1)
	}
	
	// Set current array = to our new temp array
	obj_battle_ctrl.spell_array = temp_array
	
	// Recreate deck
	scr_create_deck()
}