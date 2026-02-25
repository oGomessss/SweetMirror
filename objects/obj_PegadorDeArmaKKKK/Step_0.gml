// ARMA SENDO ARREMESSADA
if (is_thrown) {

    // muda origem pro centro
    image_xorigin = sprite_width / 2;
    image_yorigin = sprite_height / 2;

    image_angle += rotate_speed
    throw_travelled += speed;

if (is_thrown)
{
	if CanChangeVel = true
	{
		speed = random_range(18, 22);
		CanChangeVel = false
	}
    // desaceleração suave
    speed = lerp(speed, 0, 0.1);

    // rotação até o alvo
    if (image_angle < target_rotation) {
        image_angle += rotate_speed;
        if (image_angle > target_rotation) {
            image_angle = target_rotation;
        }
    }

    // quando a velocidade ficar muito pequena, para de vez
    if (abs(speed) < 0.1)
    {
        speed = 0;
        is_thrown = false;
        Infloor = true;
		CanChangeVel = true
    }
}
}
	
	switch(Weapon)
	{
	       #region Pistola
	        case WeaponType.Glock:

			sprite_index = spr_arma2

	        break;	
		#endregion
		
		#region Doze
	        // Espingarda
	        case WeaponType.Espingarda:

			sprite_index = spr_arma1
	 
	        break;
		#endregion
		
		#region Faca
			case WeaponType.Faca:

			sprite_index = spr_arma3

			break;
		#endregion
	}
	
