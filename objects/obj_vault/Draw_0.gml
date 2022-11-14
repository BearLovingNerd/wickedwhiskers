
draw_self()
draw_set_color(c_black)
var stringle = string(chips)

var left   = x-35.3
var center = x-05.0
var right  = x+26.5

// Ones place
if chips < 10
{
	draw_text(right, y-32, string_char_at(stringle, 1))
}

// Tens ace
if chips >= 10 && chips < 100
{
	draw_text(right, y-32, string_char_at(stringle, 2))
	draw_text(center, y-32, string_char_at(stringle, 1))
}
else if chips < 100
	draw_text(center, y-32, "0")	

// Hundreds place
if chips >= 100
{
	draw_text(right, y-32, string_char_at(stringle, 3))
	draw_text(center, y-32, string_char_at(stringle, 2))
	draw_text(left, y-32, string_char_at(stringle, 1))
}
else
	draw_text(left, y-32, "0")	

