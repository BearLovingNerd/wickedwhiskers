
// Testing
bust = 0

// Battlefield Positions
 backrow = [0,0,0]
frontrow = [0,0,0]
 
 backstack = [0,0,0]
frontstack = [0,0,0]

// Selection Handling
sel_value = 0

// Enemies
enemies = [obj_armadilla, obj_thunderslug]
threat  = 4

// Spawn Enemies
repeat(threat)
{
	instance_create_layer(x,y,"UI", enemies[irandom(array_length(enemies)-1)])
}

// Generate hand
alarm[0] = 0