
// If we've already reloaded twice this round
if obj_battle_ctrl.draws_used = 3
	exit;

if obj_battle_ctrl.draws_used = 2
{
	my_num.fade_away = true	
}

// if the chamber isn't currently reloading
if obj_chamber.turning == "stop"
{
	
	// Adjust battle control, chip counter, and vault
	obj_chip_counter.chips -= obj_battle_ctrl.cost + (round(obj_battle_ctrl.cost/2) * obj_battle_ctrl.draws_used)
	obj_vault.chips += obj_battle_ctrl.cost + (round(obj_battle_ctrl.cost/2) * obj_battle_ctrl.draws_used)
	obj_battle_ctrl.draws_used += 1

	// adjust draw cost
	if obj_battle_ctrl.draws_used != 3
	{
		my_num.image_index = obj_battle_ctrl.cost + (round(obj_battle_ctrl.cost/2) * obj_battle_ctrl.draws_used)
	}

	// reload
	scr_reload()
}