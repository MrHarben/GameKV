/// @description Insert description here
// You can write your code in this editor

depth =  -9999;

global.font = font_add_sprite(spr_main_font1, 32, true, 1);

// коструктор предметов
function create_item(_name, _desc, _spr, _can_drop, _effect) constructor
	{
		name = _name;
		description = _desc;
		sprite = _spr;
		can_drop = _can_drop;
		effect = _effect;
	}

// создать элементы
global.item_list =
	{
		apple : new create_item(
			"Apple",
			"It's a APPLE! Recovers HP.",
			
			sp_apple,
			true,
			
			function()
			{
				Ob_player.hp += 5;
				
				// избавится от этого предмета
				array_delete(inv, selected_item, 1);
				
				// добавить половину яблока
				array_insert(inv, selected_item, global.item_list.apple_half);
			}
		),
		
		apple_half : new create_item(
			"Half-Eaten Apple",
			"A APPLE TO FINISH EATTING! Get HP.",
			sp_apple_half,
			true,
			
			function()
			{
				Ob_player.hp += 5;
				
				// избавится от этого предмета
				array_delete(inv, selected_item, 1);
			}
		),
	
		tomato : new create_item(
			"Tomato",
			"It's a TOMATO! Recovers HP.",
			sp_tomato,
			true,
			
			function()
			{
				Ob_player.hp += 10;
				
				// избавится от этого предмета
				array_delete(inv, selected_item, 1);
			}
		),
		
		redkey : new create_item(
			"Red Key",
			"Opens red doors. (Single use)",
			sp_redkey,
			false,
			
			function()
			{
				var _used = false;
				if instance_exists(obj_red_door)
				{
					with(obj_red_door)
					{
						if distance_to_object(Ob_player) < 20 
						{
							instance_change(Ob_open_door, 0);
							_used = true;
						}
					}
				}
				// избавляется от этого предмета
				if _used == true
				{
					array_delete(inv, selected_item, 1);
				}
			}
		),
		
		bluekey : new create_item(
			"Blue Key",
			"Opens blue doors. (Single use)",
			sp_bluekey,
			false,
			
			function()
			{
				var _used = false;
				if instance_exists(obj_blue_door)
				{
					with(obj_blue_door)
					{
						if distance_to_object(Ob_player) < 20 
						{
							instance_change(Ob_open_door, 0);
							_used = true;
						}
					}
				}
				// избавляется от этого предмета
				if _used == true
				{
					array_delete(inv, selected_item, 1);
				}
			}
		),
		
		greenkey : new create_item(
			"Green Key",
			"Opens green doors. (Single use)",
			sp_greenkey,
			false,
			
			function()
			{
				var _used = false;
				if instance_exists(Obj_green_door)
				{
					with(Obj_green_door)
					{
						if distance_to_object(Ob_player) < 20 
						{
							instance_change(Ob_open_door, 0);
							_used = true;
						}
					}
				}
				// избавляется от этого предмета
				if _used == true
				{
					array_delete(inv, selected_item, 1);
				}
			}
		),
	}
	
// составить инвертиризацию
inv = array_create(0);

inv_max = 5;
selected_item = -1;
		
//для рисования и положения мыши
sep = 16;
screen_bord = 16;
