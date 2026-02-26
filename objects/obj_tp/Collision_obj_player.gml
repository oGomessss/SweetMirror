/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if global.mortos >= 3
{
	layer_sequence_create("fade", x, y, fadeout)
	alarm[0] = 42
	global.mortos = 0
}
