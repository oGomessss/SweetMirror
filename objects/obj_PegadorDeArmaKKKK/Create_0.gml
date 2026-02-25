randomise()
sprite_index = ChooseSpr

emo = true
wiggle_time = 0;
wiggle_speed = random_range(0.08, 0.1);
wiggle_strength = random_range(3.2, 4);


//como tá
Infloor = true;
is_thrown = false;

// arremesso
throw_direction = 0;
throw_travelled = 0;
throw_distance = 200;

CanChangeVel = true

// rotação
rotate_speed = 17; //controla o giro
target_rotation = 0;

Weapon = choose(WeaponType.Glock, WeaponType.Espingarda, WeaponType.Faca);