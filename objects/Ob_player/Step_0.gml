/// @description Двигаться
// You can write your code in this editor

// Проверка нажатых клавиш
A = keyboard_check(ord("A"));
D = keyboard_check(ord("D"));
SPACE = keyboard_check(vk_space);

// Вычисляем направление
move = D - A;

// Задаём скорость
if (move != 0 and attack != 1)
	hspd = move * spd;
else
	hspd *= 0.7;

// Рывок при удрае
	
vspd += grv;

// Проверяем столкновение по горизонтали
if (place_meeting(x+hspd,y,Ob_ground)){
	while(!place_meeting(x+sign(hspd),y,Ob_ground))
		x+=sign(hspd)
	hspd = 0;
}
if (place_meeting(x+hspd,y,Ob_ghostGroundBlock)){
	while(!place_meeting(x+sign(hspd),y,Ob_ghostGroundBlock))
		x+=sign(hspd)
	hspd = 0;
}

x += hspd; // Двигаем по горизонтали

// Прыжок
if (place_meeting(x,y+1,Ob_ground) and SPACE = 1){
	vspd = -7
}
if (place_meeting(x,y+1,Ob_ghostGroundBlock) and SPACE = 1){
	vspd = -7
}

// Проверяем столкновение по вериткали
if (place_meeting(x,y+vspd,Ob_ground)){
	while(!place_meeting(x,y+sign(vspd),Ob_ground))
		y+=sign(vspd)
	vspd = 0;
	blockAttack = false;
	if (attack = 1 and image_index = 1) {
		if (mouse_x != x)
			hspd = 4 * sign(mouse_x - x);
	}
}
else {
	if (attack = 1 and image_index = 1) {
		if (mouse_x != x) {
			hspd = lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))
			vspd = lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))
		}
	}	
}
if (place_meeting(x,y+vspd,Ob_ghostGroundBlock)){
	while(!place_meeting(x,y+sign(vspd),Ob_ghostGroundBlock))
		y+=sign(vspd)
	vspd = 0;
	blockAttack = false;
	if (attack = 1 and image_index = 1) {
		if (mouse_x != x)
			hspd = 5 * sign(mouse_x - x);
	}
}
else {
	if (attack = 1 and image_index = 1) {
		if (mouse_x != x) {
			hspd = lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))
			vspd = lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))
		}
	}	
}

y += vspd; // Двигаем по веритикали

// ---- Анимация ----
	
if (D - A != 0) // Поворот персонажа
	image_xscale = move

// Ставим анимации

if (attack = 1) {
	sprite_index = Sp_playerAttack;
	y -= 2
	if (mouse_x != x) // Поворот персонажа
		image_xscale = sign(mouse_x - x)
} else {
	if (place_meeting(x,y+1,Ob_ground)){ // есть ли под ногами объект
		if (move = 0) // если горизонтальная скорость = 0
			sprite_index = Sp_playerIdle; // спрайт покоя
		else // иначе
			sprite_index = Sp_playerRun; // спрайт бега
} else { // иначе
	if (vspd > 0) sprite_index = Sp_playerJumpDown; // горизонтальная скорость > 0
		if (vspd < 0) sprite_index = Sp_playerJumpUp; // горизонтальная скорость < 0
	}		
}
if (attack = 1) {
	sprite_index = Sp_playerAttack;
	y -= 2
	if (mouse_x != x) // Поворот персонажа
		image_xscale = sign(mouse_x - x)
} else {
	if (place_meeting(x,y+1,Ob_ghostGroundBlock)){ // есть ли под ногами объект
		if (move = 0) // если горизонтальная скорость = 0
			sprite_index = Sp_playerIdle; // спрайт покоя
		else // иначе
			sprite_index = Sp_playerRun; // спрайт бега
} else { // иначе
	if (vspd > 0) sprite_index = Sp_playerJumpDown; // горизонтальная скорость > 0
		if (vspd < 0) sprite_index = Sp_playerJumpUp; // горизонтальная скорость < 0
	}		
}
if (hp = 0) {
	instance_destroy(Ob_player);
}