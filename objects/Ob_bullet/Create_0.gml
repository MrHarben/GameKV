/// @description Insert description here
// You can write your code in this editor
damage = 1;
pl = instance_nearest(x,y, Ob_player)//сохраняет в переменную местоположение игрока
move_towards_point(pl.x-15, pl.y-15, 4)//заставляет пулю двигаться на место где был игрок с скоростью 4