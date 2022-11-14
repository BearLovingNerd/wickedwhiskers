
if selected == true && flip != "spinning"
{
	if image_xscale < 1.5
	{
		image_xscale += .03
		image_yscale += .03
	}
}
else
{
	if image_xscale > 1
	{
		image_xscale -= .03
		image_yscale -= .03
	}
}

if flip == "nothing"
	exit;

if flip == "back turn"
{
	image_xscale -= .1
	
	if image_xscale = 0
	{
		flip = "front turn"
		image_index = card_face	
	}
	exit;
}

if flip == "front turn"
{
	image_xscale += .1
	
	if image_xscale = 1
	{
		flip = "nothing"	
	}
	exit;
}

if flip == "spinning"
{
	image_xscale -= .05
	image_alpha  -= .025
	
	if image_xscale == 0
	{
		flip = "spin back"
		image_index = 0
	}
	exit;
}

if flip == "spin back"
{
	image_xscale += .05
	image_alpha  -= .025
	
	if image_xscale = 1
	{
		flip = "spinning"
		image_index = card_face
	}
	
	if image_alpha < 0
	{
		instance_destroy()	
	}
}



