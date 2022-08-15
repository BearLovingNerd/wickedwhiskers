

if connected == true
{
	if instance_number(obj_selector) < 1
	{
		with instance_create_depth(x,y,-10,obj_selector)
		{
			pad_index = other.pad_index	
		}
	}
}
