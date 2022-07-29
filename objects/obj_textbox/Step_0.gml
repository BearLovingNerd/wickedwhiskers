
if place_meeting(x,y,obj_selector)
{
	if image_yscale < 1
	{
		image_yscale += .5
	}
	
	if image_yscale >= .8 and image_xscale < 1
	{
		image_xscale += .1	
	}
}
else
{
	if image_yscale > .1
	{
		image_yscale -= .5
	}
	
	if image_yscale <= .1 and image_xscale > .1
	{
		image_xscale -= .1	
	}
}

if image_xscale = .1
{
	image_alpha = 0
}
else image_alpha = 1