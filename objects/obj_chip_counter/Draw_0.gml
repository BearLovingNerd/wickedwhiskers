
draw_self()
var i = 0

repeat(chips)
{
	if i < 10
	{
		draw_sprite(spr_chip, 1, x - 73, y + 32 - (i * 11))
	}
	else if i > 10 && i < 20
	{
		draw_sprite(spr_chip, 1, x - 36, y + 32 - (i * 11)+120)
	}
	else if i > 20
	{
		draw_sprite(spr_chip, 1, x + 00, y + 32 - (i * 11)+230)
	}
	i ++
}