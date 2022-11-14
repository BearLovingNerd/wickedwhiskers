function scr_check_wiggler(target)
{
	with target
	{
		if value_counter.my_num.image_index < 9
			return true
		
		if value_counter.my_num.image_index == 9
		{
			// Change Counters
			with hp_counter.my_num
			{
				image_index -= 3
			}
			with value_counter
			{
				wiggle = false
				my_num.image_index = 0
			}

			// shake
			path_start(path_shake,15,path_action_stop, false)
		}
		
		else if value_counter.my_num.image_index > 9
		{
			// Change Counters
			with hp_counter.my_num
			{
				image_index -= 1
			}
			with value_counter
			{
				wiggle = false
				my_num.image_index = 0
			}
			
			// shake
			path_start(path_shake_small,12,path_action_stop, false)
		}
	}
}