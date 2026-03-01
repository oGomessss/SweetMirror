/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

#region Andar

#region Variaveis temporarias
var _w = keyboard_check(ord("W"))
var _s = keyboard_check(ord("S"))
var _d = keyboard_check(ord("D"))
var _a = keyboard_check(ord("A"))

var _up = keyboard_check(vk_up)
var _down = keyboard_check(vk_down)
var _left = keyboard_check(vk_left)
var _right = keyboard_check(vk_right)
#endregion

#region fazer essa bosta funcionar kkkkj
if canmove
{
velv = (_s - _w) * velv_max
velh = (_d - _a) * velh_max
}

#endregion

	
#region colision
	if (place_meeting(x + velh, y, obj_barreira))
	{
		var _velh = sign(velh)
		while(!place_meeting(x + _velh, y, obj_barreira))
		{
			x += _velh
		}
		velh = 0
	}
	
		if (place_meeting(x, y + velv, obj_barreira))
	{
		var _velv = sign(velv)
		while(!place_meeting(x, y + _velv, obj_barreira))
		{
			y += _velv
		}
		velv = 0
	}
	
	colide = false
#endregion

var dist = point_distance(x, y, obj_player.x, obj_player.y);

var min_dist = 90; // começa a desaparecer
var max_dist = 150; // totalmente invisível

image_alpha = 1 - clamp((dist - min_dist) / (max_dist - min_dist), 0, 1);

