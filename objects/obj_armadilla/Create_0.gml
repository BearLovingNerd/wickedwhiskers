

// Position chance is based on preference to front row.
// The greater the number, the more likely it will appear in the front.
// When checking for if an enemy "prefers" front or back, 6 or greater 
// prefers front row, and 5 or less prefers back row

//position_pref = "front"
position_chance = 7
scr_enemy_init(position_chance, id)

type = type.battle
battle_type = battle_type.enemy

hp = 7
value = 0