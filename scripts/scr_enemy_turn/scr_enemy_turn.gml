function scr_enemy_turn()
{
	
	var enemy_index = 0

	repeat(array_length(obj_battle_ctrl.enemies))
	{
		with obj_battle_ctrl.enemies[enemy_index]
		{
			alarm[0] = 25 + 25 * enemy_index
		}
		enemy_index += 1
	}
}