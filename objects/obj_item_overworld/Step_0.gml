/// @description Insert description here
// You can write your code in this editor

sprite_index = item.sprite;

if place_meeting(x, y, Ob_player)
{
	if item_add(item) == true
	{
		instance_destroy();
	}
}