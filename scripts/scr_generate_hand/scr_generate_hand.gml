function scr_generate_hand(hand)
{
	
	// Generate Left Hand
	if hand == "left"
	{
		var x_offset = 0
		var timer_offset = 15
	
		repeat(obj_player.l_atk_speed)
		{
			with instance_create_layer(100 + x_offset, 300, "UI", obj_card)
			{
				value = obj_player.l_atk_power[irandom(5)]
				image_index = value
				alarm[0] = timer_offset
			}
		
			x_offset += 30
			timer_offset += 15
		}
	}
	
	// Generate Right Hand
	if hand == "right"
	{
		var x_offset = 0
		var timer_offset = 15
	
		repeat(obj_player.r_atk_speed)
		{
			with instance_create_layer(540 - x_offset, 300, "UI", obj_card)
			{
				value = obj_player.r_atk_power[irandom(5)]
				image_index = value
				alarm[0] = timer_offset
			}
		
			x_offset += 30
			timer_offset += 15
		}
	}
}