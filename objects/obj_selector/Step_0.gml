
if obj_controller.freeze_cntrl == true
{
	exit;	
}

// use selector find to search in specified direction
if keyboard_check_pressed(ord("A")) || (gamepad_axis_value(pad_index, gp_axislh) < -.5 && press = false)
{
	scr_selector_find("left", 0)
}
if keyboard_check_pressed(ord("D")) || (gamepad_axis_value(pad_index, gp_axislh) > .5 && press = false)
{
	scr_selector_find("right", 0)
}
if keyboard_check_pressed(ord("W")) || (gamepad_axis_value(pad_index, gp_axislv) < -.5 && press = false)
{
	scr_selector_find("up", 0)
}
if keyboard_check_pressed(ord("S")) || (gamepad_axis_value(pad_index, gp_axislv) > .5 && press = false)
{
	scr_selector_find("down", 0)
}

// interact with my hover
if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(pad_index, gp_face2)
{
	
	scr_find_type(my_hover)
}

if gamepad_axis_value(pad_index, gp_axislh) < -.5
or gamepad_axis_value(pad_index, gp_axislh) > .5
or gamepad_axis_value(pad_index, gp_axislv) < -.5
or gamepad_axis_value(pad_index, gp_axislv) > .5
{
	press = true	
}
else
{
	press = false	
}
