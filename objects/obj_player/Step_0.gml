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

if (_w or _up )
{
	y -= vel
}

if (_s or _down)
{
	y += vel
}

if (_a or _left)
{
	x -= vel
}

if (_d or _right)
{
	x += vel
}

#endregion

#endregion

#region tiro
if (arma1 = true)
{
	
if (device_mouse_check_button_pressed(0, mb_left))
{
		_atirar = instance_create_layer(x, y, "tiro", obj_tiro)
		_atirar.direction = point_direction(x, y, mouse_x, mouse_y)
		_atirar.image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
		_atirar.speed = 20
		_atirar.image_xscale = 5
		_atirar.image_yscale = _atirar.image_xscale
}


}
#endregion
