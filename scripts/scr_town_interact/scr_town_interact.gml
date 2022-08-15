function scr_town_interact(my_hover)
{
	
	/*
		Here is a function where we call all the different types 
		of buttons in the town screens. Each button is assigned this
		typing in it's creation event, along with some specific variables
		for jumping to specific rooms or equipping certain items
		
					  --- Current types ---
		
			  nothing: simply does nothing c:
		   navigation: uses my_room to navigate rooms
		    gun equip: uses my_gun to pass stats to the control/master
		item purchase: uses my_item to place an item in your inventory
		      resting: restores your HP to full
	*/
	
	// Return control
	obj_controller.freeze_cntrl = false
	
	// Define types
	enum town_type
	{
		nothing,
		navigation,
		gun_equip,
		item_purchase,
		rest,
	}
	
	if my_hover.town_type == town_type.nothing
	{
		// do nothing!
	}
	
	if my_hover.town_type == town_type.navigation
	{
		room = my_hover.my_room
		exit;
	}
	
	if my_hover.town_type == town_type.gun_equip
	{
		// Create left and right hand choice boxes
		if my_hover.equipping == false
		{
			// Place selector between both options
			x = room_width/2
			y = 330
			
			// Create left and right options
			with instance_create_layer(200, 330, "UI", obj_gun_equip)
			{
				gun_name  = my_hover.gun_name
				atk_speed = my_hover.atk_speed
				atk_power = my_hover.atk_power
				text      = "left"
				equipping = true
			}
			with instance_create_layer(440, 330, "UI", obj_gun_equip)
			{
				gun_name  = my_hover.gun_name
				atk_speed = my_hover.atk_speed
				atk_power = my_hover.atk_power
				text      = "right"
				equipping = true
			}
			exit;
		}
		
		// Or if equipping is true, equip your stats
		else
		{
			if my_hover.text == "left"
			{
				obj_player.l_gun_name  = my_hover.gun_name
				obj_player.l_atk_speed = my_hover.atk_speed
				obj_player.l_atk_power = my_hover.atk_power
				with obj_gun_equip
				{
					if equipping == true
					{
						instance_destroy()	
					}
				}
				
				exit;
			}
			
			if my_hover.text == "right"
			{
				obj_player.r_gun_name  = my_hover.gun_name
				obj_player.r_atk_speed = my_hover.atk_speed
				obj_player.r_atk_power = my_hover.atk_power
				with obj_gun_equip
				{
					if equipping == true
					{
						instance_destroy()	
					}
				}
				exit;
			}
		}
	}
}