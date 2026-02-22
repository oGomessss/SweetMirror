// ARMA SENDO ARREMESSADA
if (is_thrown) {

    // muda origem pro centro
    image_xorigin = sprite_width / 2;
    image_yorigin = sprite_height / 2;

    image_angle += rotate_speed
    throw_travelled += speed;

if (is_thrown) {

    var move_speed = 10;

    x += lengthdir_x(move_speed, throw_direction);
    y += lengthdir_y(move_speed, throw_direction);

    throw_travelled += move_speed;

    // rotação até o alvo
    if (image_angle < target_rotation) {
        image_angle += rotate_speed;
        if (image_angle > target_rotation) {
            image_angle = target_rotation;
        }
    }

    // só para quando REALMENTE chegar a 200px
    if (throw_travelled >= throw_distance) {
        is_thrown = false;
        Infloor = true;
    }
}
}