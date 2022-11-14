
target_yscale = my_num.image_index/9.69

if target_yscale < 0
{
	target_yscale = 0
}

if target_yscale > .934
{
	target_yscale = .934
}

if abs(current_yscale - target_yscale) < .02
	exit;

if current_yscale > target_yscale 
{
	current_yscale -= (current_yscale - target_yscale)/10
}
else if current_yscale < target_yscale
{
	current_yscale += (target_yscale - current_yscale)/10
}