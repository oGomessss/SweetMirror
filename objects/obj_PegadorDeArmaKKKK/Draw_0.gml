if emo = true
{
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white, 0.4)
}

wiggle_time += wiggle_speed;

var w = ((sin(wiggle_time) + 1) / 2) * wiggle_strength;

// offset base (3 pixels antes da posição normal)
var base_dx = -1;
var base_dy = -1;

// wiggle diagonal ↖
var dx = base_dx - w;
var dy = base_dy - w;

draw_sprite_ext(
    sprite_index,
    0,
    x + dx,
    y + dy,
    image_xscale,
    image_yscale,
    image_angle,
    c_white,
    1
);


