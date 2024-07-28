/// @description Insert description here
// You can write your code in this editor
if(Ob_player.isTrapped = true and Ob_plate.isActivety = false and isRecovery = false){
	instance_create_depth(x, y, 100, Ob_bullet);//создает объект пуля
	isRecovery = true;
}