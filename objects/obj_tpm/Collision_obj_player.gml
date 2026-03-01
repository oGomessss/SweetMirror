/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if !global.equipado
{
layer_sequence_create("fade", x, y, trans_1)
global.level = 1
}

if global.equipado
{
	global.level = 2
	layer_sequence_create("fade", x, y, trans_3)
}