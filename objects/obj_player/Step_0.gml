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
if (mouse_check_button_pressed(mb_left)) {

    var dir = point_direction(x, y, mouse_x, mouse_y);

    switch (weapon) {

        #region Pistola
        case WeaponType.Glock:
            var b = instance_create_layer(x, y, "Tiro", obj_tiro);
            b.direction = dir;
            b.image_angle = dir - 90;
            b.speed = 14;
            b.image_xscale = 3;
            b.image_yscale = b.image_xscale;
        break;
        #endregion

        #region Doze
        // Espingarda
        case WeaponType.Espingarda:
            for (var i = -1; i <= 1; i++) {
                var b = instance_create_layer(x, y, "Tiro", obj_tiro);
                b.direction = dir + i * 8;
                b.image_angle = dir - 90;
                b.speed = 14;
                b.image_xscale = 3.4;
                b.image_yscale = b.image_xscale;
            }
        break;
        #endregion

        #region Faca
        case WeaponType.Faca:
            var s = instance_create_layer(x, y, "tiro", obj_slash);
            s.dir = dir;
        break;
        #endregion
    }
}
#endregion
#endregion


#region pegar e arremesar
if (device_mouse_check_button_pressed(0, mb_right)) {

    // se tem arma → arremessa
    if (gun_equipped != noone) {

        var g = gun_equipped;
        gun_equipped = noone;

        g.Infloor = false;
        g.is_thrown = true;

        g.throw_direction  = point_direction(x, y, mouse_x, mouse_y);
        g.throw_travelled  = 0;
        g.throw_distance   = 200;

        g.target_rotation = irandom_range(45, 380);
        g.image_angle = 0;

        // 🔴 perdeu a arma → sem ataque
        weapon = WeaponType.NONE;
    }
    // se não tem arma → tenta pegar
    else {

        var g = instance_place(x, y, obj_PegadorDeArmaKKKK);

        if (g != noone && g.Infloor && !g.is_thrown) {
            gun_equipped = g;
            weapon = g.Weapon; // 🔥 ESSENCIAL
            g.Infloor = false;
        }
    }
}
#endregion


// =====================
// ARMA SEGUINDO PLAYER
// =====================
if (gun_equipped != noone) {
    gun_equipped.x = x;
    gun_equipped.y = y + 4;
    gun_equipped.direction = point_direction(x, y, mouse_x, mouse_y);
    gun_equipped.image_angle = gun_equipped.direction;
}