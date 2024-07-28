/// @description Insert description here
// You can write your code in this editor

// получить исходные данные
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key_enter = keyboard_check_pressed(vk_enter);

// сохранить количество опций в текущем меню
op_length = array_length(option[menu_level])

// просмотр меню
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

// использование опций
if accept_key_enter {
	var _sml = menu_level;
	switch (menu_level) {
		
		// меню паузы
		case 0:
		switch (pos) {
		
			// начало игры
			case 0: room_goto_next(); break;
	
			// настройки
			case 1: menu_level = 1; break;
	
			// выход из игры
			case 2: game_end(); break;
		}
		break;
		
		// меню настроек
		case 1: 
			switch (pos) {
				// размер окна
				case 0:
					
				break;
				// фуллскрин
				case 1:
					window_set_fullscreen(true);
				break;
				// яркость
				case 2:
					
				break;
				// управление
				case 3:
					
				break;
				// назад
				case 4:
					menu_level = 0;
				break;
			}
		break;
	}
		
		// установленно положение назад
		if _sml != menu_level {pos = 0};
		
		// правильный вариант длинны
		op_length = array_length(option[menu_level])
}