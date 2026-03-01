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
if canmove = true
{
velv = (_s - _w) * velv_max
velh = (_d - _a) * velh_max

if velh > 0 or velv > 0 or velv < 0 or velh < 0
{
	sprite_index = spr_playerWalk
}
else
{
	sprite_index = spr_player
}

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
		if (timerT <= 0)
		{
            var b = instance_create_layer(x, y, "Tiro", obj_tiro);
            b.direction = dir;
            b.image_angle = dir - 90;
            b.speed = 14;
            b.image_xscale = 1;
            b.image_yscale = b.image_xscale;
			tempoT = 60
			timerT = tempoT
		}
		else
		{}
        break;
        #endregion

        #region Doze
        // Espingarda
        case WeaponType.Espingarda:
				if (timerT <= 0)
			{
            for (var i = -1; i <= 1; i++) 
			{
                var b = instance_create_layer(x, y, "Tiro", obj_tiro);
                b.direction = dir + i * 8;
                b.image_angle = dir - 90;
                b.speed = 14;
                b.image_xscale = 1.4;
                b.image_yscale = b.image_xscale;
				tempoT = 120
				timerT = tempoT
				layer_set_visible("shake", true)
				alarm[0] = 10
			}
            }
        break;
        #endregion

        #region Faca
        case WeaponType.Faca:
				if (timerT <= 0)
			{
            var s = instance_create_layer(x, y, "tiro", obj_slash);
            s.dir = dir;
			tempoT = 45
			timerT = tempoT
			}
        break;
        #endregion
    }
}
#endregion
#endregion

#region pegar e arremesar
if (device_mouse_check_button_pressed(0, mb_right)) {


    if (gun_equipped != noone) {

        var g = gun_equipped;
        gun_equipped = noone;

        g.Infloor = false;
        g.is_thrown = true;
		
        g.throw_direction  = point_direction(x, y, mouse_x, mouse_y);
        g.throw_travelled  = 0;
        g.throw_distance   = 200;
		if global.level = 1
		layer_add_instance("arma", g)
		
		if global.level = 2
		layer_add_instance("arma2", g)
		
        g.target_rotation = irandom_range(45, 380);
        g.image_angle = 0;


        weapon = WeaponType.NONE;
    }
 
    else {

        var g = instance_place(x, y, obj_PegadorDeArmaKKKK);
		//var npc = obj_inimigo.armanpc

        if (g != noone && g.Infloor && !g.is_thrown && obj_inimigo.armanpc = false) {
            gun_equipped = g;
            weapon = g.Weapon;
            g.Infloor = false;
			layer_add_instance("arma_player", g)
        } else if obj_inimigo.armanpc = true
		{
			// PORRA NENHUMA
		}
    }
}

timerT--
direction = point_direction(x, y, mouse_x, mouse_y);
speed = lerp(speed, 0, 0.5)
if speed == 0
{
	canmove = true
}


// =====================
// ARMA SEGUINDO PLAYER
// =====================
if (gun_equipped != noone) {
	taequipado = true
    gun_equipped.x = x;
    gun_equipped.y = y + 4;
    gun_equipped.direction = point_direction(x, y, mouse_x, mouse_y);
    gun_equipped.image_angle = gun_equipped.direction;
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


#region morte

if morto = true
{
	canmove = false
    layer_set_visible("player", false)
	if criou = false
	{
	layer_sprite_create("playermorto", x, y, spr_playerdie)
	criou = true
	}
    image_index = 1
    image_speed = 14
	
	alarm[3] = 15
}

#endregion


#region camadas

	if global.level = 1
	{
													instance_activate_layer("barreira");
	instance_deactivate_layer("barreira2");
	layer_set_visible("tiles2", false)
	layer_set_visible("tile", true)
	layer_set_visible("espelho", false)
	layer_set_visible("deco2", false)
	layer_set_visible("deco", true)
													instance_activate_layer("arma")
													layer_set_visible("arma", true)
													instance_activate_layer("porta")
	instance_deactivate_layer("inimigo2")
	instance_deactivate_layer("reflexo")
	instance_deactivate_layer("porta2")
	instance_deactivate_layer("arma2")
													instance_activate_layer("inimigo")
	}
	else
	{
													instance_deactivate_layer("barreira");
	instance_activate_layer("barreira2");
	layer_set_visible("tiles2", true)
	layer_set_visible("tile", false)
	layer_set_visible("espelho", true)
	layer_set_visible("deco2", true)
	layer_set_visible("deco", false)
													instance_deactivate_layer("arma")
													instance_deactivate_layer("porta")
	instance_activate_layer("inimigo2")
	instance_activate_layer("reflexo")
	instance_activate_layer("porta2")
	instance_activate_layer("arma2")
													instance_deactivate_layer("inimigo")
	}


#endregion