function scr_battle_transition()
{
	
	// Freeze Control
	obj_controller.freeze_cntrl = true	
	
	// Establish Variables
	var up_offset = 32
	var down_offset = 32
	
	// Center
	with instance_create_layer(640, room_height/2, "UI", obj_transbar)
	{
		image_angle += 180	
	}
	
	// Up
	repeat(4)
	{
		// Right Side
		instance_create_layer(0, room_height/2 + up_offset, "UI", obj_transbar)
		up_offset += 32
		
		// Left Side
		with instance_create_layer(640, room_height/2 + up_offset, "UI", obj_transbar)
		{
			image_angle += 180	
		}
		up_offset += 32
	}
	
	// Down
	repeat(4)
	{
		// Right Side
		instance_create_layer(0, room_height/2 - down_offset, "UI", obj_transbar)
		down_offset += 32
		
		// Left Side
		with instance_create_layer(640, room_height/2 - down_offset, "UI", obj_transbar)
		{
			image_angle += 180	
		}
		down_offset += 32
	}
	
}