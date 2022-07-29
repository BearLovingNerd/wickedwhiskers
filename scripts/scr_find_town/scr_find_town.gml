function scr_find_town(my_hover)
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
}