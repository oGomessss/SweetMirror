/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if keyboard_check_pressed(vk_enter)
{
	image_index++
}

if image_index > 7
{
	layer_sequence_create("Assets_1", x, y, trans_2)
}