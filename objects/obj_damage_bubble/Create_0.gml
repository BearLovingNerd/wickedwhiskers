
// Start out small
scale = "growing"
image_speed = 0
image_xscale = .2
image_yscale = .2
depth -= instance_number(obj_damage_bubble) * 2

// transparent number
my_num = instance_create_layer(x, y, "UI_Effects", obj_red_trans_number)
my_num.image_xscale = .2
my_num.image_yscale = .2
my_num.depth -= instance_number(obj_damage_bubble) * 2

// Shadow
my_shadow = instance_create_layer(x-5, y+5, "UI_Effects", obj_damage_shadow)
my_shadow.image_xscale = .2
my_shadow.image_yscale = .2
my_shadow.depth -= (instance_number(obj_damage_bubble) * 2) - 1

// Sparks Animation
