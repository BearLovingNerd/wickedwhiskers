
// Default hover for selector
type = type.nothing

// Gun Stats
my_gun = instance_create_layer(x, y, "Control", obj_ol_reliable)
//my_gun = instance_create_layer(x, y, "Control", obj_swiftbolt)
//my_gun = instance_create_layer(x, y, "Control", obj_god_gun)

gun_name	= my_gun.gun_name
cost		= my_gun.cost
bust		= my_gun.bust
crit		= my_gun.crit
atk_power	= my_gun.atk_power
accuracy	= my_gun.accuracy
deviance	= my_gun.deviance

// Spells
spell_array = 
[
	spells.fireball, 
	spells.fireball, 
	spells.fireball, 
	spells.douse, 
	spells.douse, 
	spells.douse, 
	spells.zing,
	spells.zing,
	spells.zing
]
