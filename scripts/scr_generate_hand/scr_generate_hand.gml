function scr_generate_hand()
{
	var x_offset = 0
	var timer_offset = 15
	
	repeat(obj_controller.atk_speed)
	{
		with instance_create_layer(50 + x_offset, 300, "UI", obj_card)
		{
			value = obj_controller.atk_power[irandom(5)]
			image_index = value
			alarm[0] = timer_offset
		}
		
		x_offset += 30
		timer_offset += 15
	}
}