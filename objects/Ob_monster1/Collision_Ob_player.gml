/// @description Insert description here
// You can write your code in this editor

if collision_rectangle(Ob_player.x-42, Ob_player.y-35, Ob_player.x+42, Ob_player.y+35,self,0,0)
if (Ob_player.attack = 1) {
	hp-=Ob_player.damage
	blend_red = c_red
	alarm[0] = 2
	if (hp <= 0) instance_destroy()
}