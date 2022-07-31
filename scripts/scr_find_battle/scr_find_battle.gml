function scr_find_battle(my_hover)
{
	
	// Return control
	obj_controller.freeze_cntrl = false
	
	// Define types
	enum battle_type
	{
		draw,
		enemy,
	}
	
	if my_hover.battle_type = battle_type.draw
	{
		//do that
	}
	
	if my_hover.battle_type = battle_type.enemy
	{
		my_hover.hp -= 1
	}
	
}