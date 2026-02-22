/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

    var dir = point_direction(x, y, mouse_x, mouse_y);

// direção do ataque
image_angle = dir + 270;

// offset do slash pra frente
var offset = 80;

x += lengthdir_x(offset, dir);
y += lengthdir_y(offset, dir);

// escala
image_xscale = 4;
image_yscale = image_xscale;