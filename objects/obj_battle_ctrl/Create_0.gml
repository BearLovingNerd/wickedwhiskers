
// Obtain stats from player
gun_name	= obj_player.gun_name
cost		= obj_player.cost
cost_ante	= cost
draws_used	= 0
bust		= obj_player.bust
crit		= obj_player.crit
atk_power	= obj_player.atk_power
accuracy	= obj_player.accuracy
deviance	= obj_player.deviance

// Obtain spells from player (we put them in discard since we auto shuffle match start)
spell_array = []
hand_array  = [0, 0, 0]
discard_array = obj_player.spell_array

// Shuffle then draw initial hand
scr_shuffle()
initial_draw = 2
alarm[0] = 28 + (14 * array_length(obj_battle_ctrl.spell_array))

// Bullet Cards
bullets_remaining = 6
chamber_numbers = []

// Create UI HUD
instance_create_layer(-20, 745, "UI", obj_UI_bar)
instance_create_layer(1170, 475, "UI", obj_chip_counter)
instance_create_layer(1170, 635, "UI", obj_vault)
instance_create_layer(976, 610, "UI", obj_draw)
instance_create_layer(982, 630, "UI", obj_pass)

// HUD Stats
bust_HUD		= instance_create_layer(273, 499, "UI", obj_red_trans_number)
crit_HUD		= instance_create_layer(315, 548, "UI", obj_red_trans_number)
accuracy_HUD	= [instance_create_layer(262, 620, "UI", obj_red_trans_number), instance_create_layer(280, 620, "UI", obj_red_trans_number), instance_create_layer(305, 620, "UI", obj_red_trans_number)]
deviance_HUD	= [instance_create_layer(276, 680, "UI", obj_red_trans_number), instance_create_layer(310, 680, "UI", obj_red_trans_number), instance_create_layer(295, 680, "UI", obj_red_trans_number)]

var stringle = string(accuracy)
bust_HUD.image_index		= bust
crit_HUD.image_index		= crit
accuracy_HUD[0].image_index	= string_digits(string_char_at(stringle, 1))
accuracy_HUD[1].image_index	= string_digits(string_char_at(stringle, 2))
accuracy_HUD[2].image_index	= 11
deviance_HUD[0].image_index	= abs(deviance[0])
deviance_HUD[1].image_index	= deviance[1]
deviance_HUD[2].image_index	= 10

// Create enemies
enemies = []
en1 = instance_create_layer(400, 200, "UI", obj_slugger)
en2 = instance_create_layer(800, 350, "UI", obj_slugger)
en3 = instance_create_layer(1100, 200, "UI", obj_slugger)
array_push(enemies, en1, en2, en3)

// Generate Bullets
scr_reload()