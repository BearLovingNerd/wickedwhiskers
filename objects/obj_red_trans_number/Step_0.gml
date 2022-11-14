if fade_away == true
{
	image_alpha -= image_alpha/20
}

if image_alpha < .05
{
	image_alpha = 0
	fade_away = false	
}
