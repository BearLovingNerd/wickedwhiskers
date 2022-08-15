

if bounce_up == true
{
	y += .7
}
else y -= .7


if keyboard_check_pressed(ord("A"))
{
	scr_hover_find("left", 0)
}
if keyboard_check_pressed(ord("D"))
{
	scr_hover_find("right", 0)
}
if keyboard_check_pressed(ord("W"))
{
	scr_hover_find("up", 0)
}
if keyboard_check_pressed(ord("S"))
{
	scr_hover_find("down", 0)
}


