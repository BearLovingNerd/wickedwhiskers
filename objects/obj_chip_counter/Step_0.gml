var stringle = string(chips)



if chips > 9
{
	my_num[0].image_index	= string_digits(string_char_at(stringle, 1))
	my_num[1].image_index	= string_digits(string_char_at(stringle, 2))
}
else
{
	my_num[0].image_index	= 0
	my_num[1].image_index	= string_digits(string_char_at(stringle, 1))
}