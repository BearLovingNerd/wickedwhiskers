function scr_create_deck()
{
	var off_set = 3
	var i = 0
	
	repeat(array_length(obj_battle_ctrl.spell_array))
	{
		var new_spell = instance_create_layer(455 - off_set, 845 + off_set, "UI_effects", obj_spell)
		
		with new_spell
		{
			depth += off_set/3
			image_index = spells.card_back
			card_face = obj_battle_ctrl.spell_array[i]
			alarm[1] = (array_length(obj_battle_ctrl.spell_array) * 14) - (14 * i)
		}
		
		obj_battle_ctrl.spell_array[i] = new_spell
		
		off_set += 3
		i ++
	}
}