
image_angle += irandom(3)

if fadeaway = true
{
	image_alpha -= .2
}

if image_xscale < 1.2
{
	image_xscale += .15
	image_yscale += .15
}

if image_alpha < 0
{
	instance_destroy()	
}