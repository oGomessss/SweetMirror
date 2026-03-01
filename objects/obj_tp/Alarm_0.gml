/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

	global.mortos = 0
	obj_player.canmove = false
	layer_set_visible("arma", false)
	layer_set_visible("inimigo", false)
	layer_sequence_create("fade", x, y, fade)

