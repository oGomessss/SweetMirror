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

#region arma
#region atirar
if (gun_equipped != noone && gun_equipped.Infloor == false) {

    if (device_mouse_check_button_pressed(0, mb_left)) {

        var _atirar = instance_create_layer(
            x,
            y,
            "tiro",
            obj_tiro
        );

        _atirar.direction = point_direction(x, y, mouse_x, mouse_y);
        _atirar.image_angle = _atirar.direction - 90;
        _atirar.speed = 20;
        _atirar.image_xscale = 5;
        _atirar.image_yscale = _atirar.image_xscale;
    }
}
#endregion
#region pegar arma
/// PEGAR ARMA (botão direito)
if (device_mouse_check_button_pressed(0, mb_right)) {

    // só pega se não estiver com arma
    if (gun_equipped == noone) {

        var g = instance_place(x, y, obj_PegadorDeArmaKKKK);
		
        if (g != noone && g.Infloor) {
            gun_equipped = g;
            g.Infloor = false;
        }
    }
}

/// FAZER ARMA SEGUIR O PLAYER
if (gun_equipped != noone) {
	gun_equipped.direction = point_direction(x, y, mouse_x, mouse_y)
	gun_equipped.image_angle = point_direction(x, y, mouse_x, mouse_y)
    gun_equipped.x = x;
    gun_equipped.y = y;
}
#endregion
#endregion
