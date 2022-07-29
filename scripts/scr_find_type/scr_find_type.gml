function scr_find_type(my_hover)
{
	enum type 
	{
		town,
		battle,
		map,
	}
	
	if my_hover.type == type.town
	{
		scr_find_town(my_hover)
		exit;
	}
	
	if my_hover.type == type.battle
	{
		scr_find_battle(my_hover)
		exit;
	}
	
	if my_hover.type == type.map
	{
		scr_find_map(my_hover)
		exit;
	}
	
}