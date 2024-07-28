/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font);

for (var i = 0; i < array_length(inv); i++)
{
	var _xx = screen_bord;
	var _yy = screen_bord;
	var _sep = sep;
	var _col = c_white;
	
	// предмет
	draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);
	
	// выбрать цвет
	if selected_item == i {_col = c_yellow;};
	draw_set_color(_col);
	
	// имя
	draw_text(_xx + 16, _yy + _sep*i, inv[i].name);
	
	// описание
	if selected_item == i
	{
		draw_text_ext(_xx + 4, _yy + _sep*array_length(inv), inv[i].description, 12, 80);
	}
	
	// вернуть цвет на белый
	draw_set_color(c_white);
}