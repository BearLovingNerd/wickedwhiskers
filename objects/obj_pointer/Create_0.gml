// hover alarm
alarm[0] = 10
bounce_up = false

// set location
x = instance_nearest(x,y,obj_block).x
y = instance_nearest(x,y,obj_block).y - 80
my_hover = instance_nearest(x,y,obj_block)

scr_find_type()