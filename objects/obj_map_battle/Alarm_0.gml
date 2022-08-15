
room = rm_battle

with instance_create_depth(600, 50, 1, obj_battle_ctrl)
{
	enemies = [obj_armadilla, obj_thunderslug]
	 threat = irandom_range(2, 4)
}

obj_controller.freeze_cntrl = false