/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
randomise()
arma1 = false

timerT = 0
tempoT = 0

canmove = true

taequipado = false

weapon = WeaponType.NONE;
gun_equipped = noone;
gun_equipped = noone;

morto = false

Infloor = true;

vel = 4

colide = false

velv = 0
velh = 0

velv_max = vel
velh_max = vel

Infloor = true;
is_thrown = false;

// salva origem original
orig_x = sprite_get_xoffset(sprite_index);
orig_y = sprite_get_yoffset(sprite_index);


	instance_activate_layer("barreira");
	instance_deactivate_layer("barreira2");
	instance_activate_layer("tile")
	instance_deactivate_layer("tiles2")
	instance_activate_layer("arma")
	instance_deactivate_layer("inimigo2")
	instance_activate_layer("inimigo")
	
criou = false
	
alarm[10] = 30