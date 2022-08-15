
if obj_controller.freeze_cntrl == true
{
	exit;	
}

// Keyboard search if no connected controller
if obj_controller.connected == false
{
	if keyboard_check_pressed(ord("A"))
	{
		scr_selector_find("left", 0)
		exit;
	}
	if keyboard_check_pressed(ord("D"))
	{
		scr_selector_find("right", 0)
		exit;
	}
	if keyboard_check_pressed(ord("W"))
	{
		scr_selector_find("up", 0)
		exit;
	}
	if keyboard_check_pressed(ord("S"))
	{
		scr_selector_find("down", 0)
		exit;
	}
	
	// Interact with enter or space key
	if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
	{
	
		scr_find_type(my_hover, "interact")
	}
}

// Controller search if a controller is connected
if obj_controller.connected == true
{
	// Directional inputs
	var gp_h = gamepad_axis_value(obj_controller.pad_index, gp_axislh)
	var gp_v = gamepad_axis_value(obj_controller.pad_index, gp_axislv)
	var interact = gamepad_button_check_pressed(obj_controller.pad_index, gp_face2)
	
	if gp_h < -.5 && press = false
	{
		scr_selector_find("left", 0)
		press = true
		exit;
	}
	if gp_h > .5 && press = false
	{
		scr_selector_find("right", 0)
		press = true
		exit;
	}
	if gp_v < -.5 && press = false
	{
		scr_selector_find("up", 0)
		press = true
		exit;
	}
	if gp_v > .5 && press = false
	{
		scr_selector_find("down", 0)
		press = true
		exit;
	}
	
	// Interact with face button
	if interact
	{
		scr_find_type(my_hover, "interact")
	}
	
	// Check if we are pressing stick
	if gp_h > .5 || gp_h < -.5 || gp_v > .5 || gp_v < -.5
	{
		press = true	
	}
	else
	{
		press = false	
	}
}

