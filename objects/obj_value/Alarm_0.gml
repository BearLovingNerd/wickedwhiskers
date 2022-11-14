
if target_value > current_value
{
	my_num.image_index += 1
	current_value += 1
	var timer = 15/(target_value - current_value)
	if timer > 10
		timer = 10
	alarm[0] = timer
}
else if target_value < current_value
{
	my_num.image_index -= 1
	current_value -= 1
	var timer = 15/(current_value - target_value)
	if timer > 10
		timer = 10
	alarm[0] = timer
}
else
{
	// Do nothing when target = current
}