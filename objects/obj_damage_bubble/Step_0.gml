
// Rotate
if image_index == 2
{
	image_angle += 2
	my_shadow.image_angle += 2
}
else if image_index = 4
{
	image_angle += 2
	my_shadow.image_angle -= 2
}

// Growing
if scale == "growing"
{
	if image_xscale < 1.5 || image_yscale < 1.5 
	{
		image_xscale += random_range(.2, .4)	
		image_yscale += random_range(.2, .4)
		
		my_num.image_xscale += random_range(.2, .4)	
		my_num.image_yscale += random_range(.2, .4)	

		my_shadow.image_xscale += random_range(.2, .4)	
		my_shadow.image_yscale += random_range(.2, .4)	
		
		exit;
	}
	else
	{
		path_start(path_shake_small, 8, path_action_stop, false)
		with my_num
			path_start(path_shake_small, 8, path_action_stop, false)
		with my_shadow
			path_start(path_shake_small, 8, path_action_stop, false)
	
		scale = "shrinking"	
	}
}

// Shrinking
if scale == "shrinking"
{
	image_xscale -= random_range(.2, .4)
	image_yscale -= random_range(.2, .4)
	
	my_num.image_xscale -= random_range(.2, .4)	
	my_num.image_yscale -= random_range(.2, .4)	

	my_shadow.image_xscale -= random_range(.2, .4)	
	my_shadow.image_yscale -= random_range(.2, .4)	
	
	if image_xscale < 1
	{
		image_xscale = 1
		image_yscale = 1
		
		my_num.image_xscale = 1	
		my_num.image_yscale = 1

		my_shadow.image_xscale = 1	
		my_shadow.image_yscale = 1
		
		alarm[0] = 45
		scale = "nothing"
	}
}

// Fade Away
if scale == "fade away"
{
	image_alpha -= .03
	my_num.image_alpha -= .03
	my_shadow.image_alpha -= .03

}

if image_alpha < 0
{
	with my_num
	{
		instance_destroy()	
	}
	
	with my_shadow
	{
		instance_destroy()	
	}
	
	instance_destroy()	
}