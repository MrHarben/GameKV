/// @description Insert description here
// You can write your code in this editor
isRecovery = false;
if(Ob_player.isTrapped = true and Ob_plate.isActivety = false and isRecovery = false){
	instance_create_depth(x, y, 100, Ob_bullet);//создает оъект пуля
	isRecovery = true;
}
alarm[0] = room_speed * 0.5;
