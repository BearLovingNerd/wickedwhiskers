if hp_counter.my_num.image_index < 0
{
	with hp_counter
		instance_destroy()
	with hp_counter.my_num
		instance_destroy()
	with value_counter
		instance_destroy()
	with value_counter.my_num
		instance_destroy()
	instance_destroy()
}