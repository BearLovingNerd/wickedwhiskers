if fade_away == true
{
	image_alpha -= image_alpha/20
}
else
{
	if image_alpha < 1
	{
		image_alpha += .05	
	}
}

if image_alpha < .05
{
	image_alpha = 0
}

