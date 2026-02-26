/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

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
}

timerD--
if timerD <= 0
{
	dir = random_range(0, 360) - dir
	tempoD = choose(60, 120, 180)
	timerD = tempoD
	direction = dir
}
	
