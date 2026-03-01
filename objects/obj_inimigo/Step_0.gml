/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if obj_player.morto = true
exit

if (tiro = true)
if faca = false
image_index = 1
if (faca = true)
if tiro = false
image_index = 2

if canmove = false
{
	speed = 0
}

if morreu = true
{
speed = 0
global.mortos += 1
armanpc = false
sprite_index = spr_inimigoMorto
if layer = layer_get_id("inimigo")
lay = "sangue"
if layer = layer_get_id("inimigo2")
lay = "sangue2"

instance_create_layer(x, y, lay, obj_sangue)

}

timerD--
if timerD <= 0
{
	dir = random_range(0, 360) - dir
	tempoD = choose(60, 120, 180)
	timerD = tempoD
	direction = dir
}
	
if instance_exists(obj_player)
{
var _dist = point_distance(x, y, obj_player.x, obj_player.y);

rot = point_direction(x, y, obj_player.x, obj_player.y);

if (_dist < distancia)
{
    // se NÃO tiver parede no meio
    if (!collision_line(x, y, obj_player.x, obj_player.y, obj_barreira, false, true) )
    {
        direction = point_direction(x, y, obj_player.x, obj_player.y);
		
		alarm[1] = 10		
		descetiro = true
		
		if !morreu
		_arma.image_angle = point_direction(x, y, obj_player.x, obj_player.y)
		
		if cooldown = false
	{
		if morreu = false
	{
		if timerT <= 0
		{
			    switch (Weapon) 
			{
		        #region Pistola
		        case WeaponType.Glock:
				if (timerT <= 0 && !cooldown)
				{
		            var b = instance_create_layer(x, y, "Tiro", obj_tiroinimigo);
		            b.direction = rot;
		            b.image_angle = rot - 90;
		            b.speed = 14;
		            b.image_xscale = 1;
		            b.image_yscale = b.image_xscale;
					if cooldown = false
					{
					tempoT = 120
					timerT = tempoT
					}
				}
				else
				{}
		        break;
		        #endregion

		        #region Doze
		        // Espingarda
		        case WeaponType.Espingarda:
						if (timerT <= 0 && !cooldown)
					{
		            for (var i = -1; i <= 1; i++) 
					{
		                var b = instance_create_layer(x, y, "Tiro", obj_tiroinimigo);
		                b.direction = rot + i * 8;
		                b.image_angle = rot - 90;
		                b.speed = 14;
		                b.image_xscale = 1.4;
		                b.image_yscale = b.image_xscale;
						if cooldown = false
						{
						tempoT = 170
						timerT = tempoT
						layer_set_visible("shake", true)
						alarm[0] = 10
						}
					}
		            }
		        break;
		        #endregion

		        #region Faca
		        //case WeaponType.Faca:
				//		if (timerT <= 0 && !cooldown)
				//	{
		        //    var s = instance_create_layer(x, y, "tiro", obj_slash2);
		        //    s.dir = rot;
				//	IdPSlash = id
				//	tempoT = 80
				//	timerT = tempoT
				//	}
		        //break;
		        #endregion
		    }
		}
	}
  }
 }
}
}


timerT--

if !morreu
{
_arma.x = x
_arma.y = y
}

