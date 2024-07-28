/// @description Insert description here
// You can write your code in this editor

if collision_rectangle(Ob_player.x-84, Ob_player.y-90, Ob_player.x+84, Ob_player.y+90,self,0,0)
if (Ob_player.attack = 1 and Ob_player.image_index = 1) {
	hp1-=Ob_player.damage
	blend_red = c_red
	alarm[0] = 2
	if (hp1 <= 0) instance_destroy()
}