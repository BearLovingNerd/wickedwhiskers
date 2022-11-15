function scr_deselect()
{
	// This deselects all other spells
	with obj_spell
	{
		if flip != "nothing"
			exit;
		
		if path_index > 0
			exit;
		
		if(selected == true)
		{
			path_start(path_down_spell, 15, path_action_stop, false)
			selected = false
		}
	}
}