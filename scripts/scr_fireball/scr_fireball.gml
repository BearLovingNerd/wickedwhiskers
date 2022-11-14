function scr_fireball(chip_measure, repeating)
{
	/*
	// iterate through enemies to look for viable target
	var i = 0
	var check_for_targets = 0
	repeat(3)
	{
		if obj_battle_ctrl.enemies[i].value >= 7
		{
			check_for_targets ++
		}
		i ++
	}
		
	// No targets? exit
	if check_for_targets == 0
		exit;
		
	// Spend chips if not repeating
	if repeating == false
	{
		obj_chips.chips -= 5
		obj_vault.chips += 5
	}
		
	// Target random enemy, and record current chips
	var random_enemy = irandom(array_length(obj_battle_ctrl.enemies)-1)
	var chip_measure = obj_chips.chips + 10
		
	// If target has value 7 or greater, strike it
	if obj_battle_ctrl.enemies[random_enemy].value >= 7
	{
		with obj_battle_ctrl.enemies[random_enemy]
		{
			scr_reset_stack(5, 2)	
		}
			
		// Reduce chip measure by 10
		chip_measure -= 10
	}
	// Else, keep looking
	else
	{
		scr_fireball(chip_measure, false)
	}
	
	// Repeat this effect if we have more than 10 chip measure still
	if chip_measure >= 10
	{
		scr_fireball(chip_measure, true)
	}
	*/
}