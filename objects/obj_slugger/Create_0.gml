

attack_damage = 3

hp_counter = instance_create_layer(x - 170, y - 125, "UI", obj_health)

with hp_counter.my_num
{
	image_index = 12
}

value_counter = instance_create_layer(x + 30, y - 125, "UI", obj_value)

with value_counter.my_num
{
	image_index = 0
}