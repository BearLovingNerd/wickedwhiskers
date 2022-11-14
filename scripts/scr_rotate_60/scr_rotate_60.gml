function scr_rotate_60()
{
	with obj_chamber
	{
		image_index -= 1
		Point_dir = image_angle - 60
		Is_Rotating = 1
	}
}