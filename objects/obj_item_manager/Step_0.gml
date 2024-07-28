/// @description Insert description here
// You can write your code in this editor

// получить выбранный предмет
selected_item = -1;
for (var i = 0; i < array_length(inv); i++)
{
	var _xx = screen_bord;
	var _yy = screen_bord + sep*i;
	
	if mouse_x > _xx && mouse_x < _xx + 16 && mouse_y > _yy && mouse_y < _yy + 16
	{
		selected_item = i;
	}
}

if selected_item != -1
{
	// использовать предмет
	if mouse_check_button_pressed(mb_right)
	{
		inv[selected_item].effect();
	}
	
	// бросить предмет
	if mouse_check_button_pressed(mb_middle) && inv[selected_item].can_drop == true
	{
		// избавится от этого предмета
		array_delete(inv, selected_item, 1);
	}
}