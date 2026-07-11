/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomise()

_1 = false

descetiro = false

distancia = 90

lay = "arma"
if global.level = 1
andar = false // false = andar 1  // true = andar 2

if global.level = 2
andar = true // false = andar 1  // true = andar 2

if layer = layer_get_id("inimigo")
lay = "arma"

if layer = layer_get_id("inimigo2")
lay = "arma2"

Weapon = choose(WeaponType.Glock, WeaponType.Espingarda);
_arma = instance_create_layer(x, y, lay, obj_PegadorDeArmaKKKK)
_arma.Weapon = Weapon

morreu = false

IdPSlash = noone

tiro = false
faca = false

tempoD = choose(60, 120, 180)
timerD = tempoD

rot = point_direction(x, y, obj_player.x, obj_player.y);
dir = random_range(0, 360)
vel = 1

armanpc = true

canmove = true

direction = dir

speed = vel

tempoT = 60
timerT = 30

cooldown = true

