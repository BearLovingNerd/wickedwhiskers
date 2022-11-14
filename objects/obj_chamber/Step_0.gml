if(turning = "left")
{
	image_angle += spinspeed
	spinspeed -= .4
	left += 1
	
	if(left > 50)
	{
		right += 1
		spinspeed += .6
	}
	
	if(right > 40)
	{
		spinspeed -= .5
		right_2 += 1
	}
	
	if(right_2 > 2)
	{
		turning = "stop"
	}
}

if (Is_Rotating == 1) //if its set to rotate the object
{
	image_angle += sin(degtorad(Point_dir - image_angle))*rspeed;
}