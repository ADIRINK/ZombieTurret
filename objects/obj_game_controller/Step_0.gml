/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09D7C059
/// @DnDArgument : "var" "game_over"
/// @DnDArgument : "value" "true"
if(game_over == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15D1C90A
	/// @DnDParent : 09D7C059
	/// @DnDArgument : "var" "victory"
	/// @DnDArgument : "value" "true"
	if(victory == true){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 1755D782
		/// @DnDParent : 15D1C90A
		var l1755D782_0;l1755D782_0 = mouse_check_button_pressed(mb_left);if (l1755D782_0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5BEFB069
			/// @DnDInput : 4
			/// @DnDParent : 1755D782
			/// @DnDArgument : "var" "gw"
			/// @DnDArgument : "value" "display_get_gui_width()"
			/// @DnDArgument : "var_1" "gh"
			/// @DnDArgument : "value_1" "display_get_gui_height()"
			/// @DnDArgument : "var_2" "mx"
			/// @DnDArgument : "value_2" "device_mouse_x_to_gui(0)"
			/// @DnDArgument : "var_3" "my"
			/// @DnDArgument : "value_3" "device_mouse_y_to_gui(0)"
			var gw = display_get_gui_width();
			var gh = display_get_gui_height();
			var mx = device_mouse_x_to_gui(0);
			var my = device_mouse_y_to_gui(0);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5388F6CF
			/// @DnDParent : 1755D782
			/// @DnDArgument : "expr" "mx > gw/2 - 100 && mx < gw/2 + 100 && my > gh/2 + 20 && my < gh/2 + 60"
			if(mx > gw/2 - 100 && mx < gw/2 + 100 && my > gh/2 + 20 && my < gh/2 + 60){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 38FA0A49
				/// @DnDInput : 2
				/// @DnDParent : 5388F6CF
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "false"
				/// @DnDArgument : "var" "victory"
				/// @DnDArgument : "var_1" "game_over"
				victory = false;
				game_over = false;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 2F2C3F57
				/// @DnDApplyTo : {obj_wave_manager}
				/// @DnDParent : 5388F6CF
				with(obj_wave_manager) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0580FB03
					/// @DnDInput : 2
					/// @DnDParent : 2F2C3F57
					/// @DnDArgument : "expr" "level_number+1"
					/// @DnDArgument : "expr_1" "1"
					/// @DnDArgument : "var" "level_number"
					/// @DnDArgument : "var_1" "wave_number"
					level_number = level_number+1;
					wave_number = 1;
				
					/// @DnDAction : YoYo Games.Instances.Call_User_Event
					/// @DnDVersion : 1
					/// @DnDHash : 0E9ECB32
					/// @DnDParent : 2F2C3F57
					event_user(0);
				}
			
				/// @DnDAction : YoYo Games.Rooms.Restart_Room
				/// @DnDVersion : 1
				/// @DnDHash : 3DDDC46E
				/// @DnDParent : 5388F6CF
				room_restart();}}}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3E7442F1
	/// @DnDParent : 09D7C059
	var l3E7442F1_0;l3E7442F1_0 = mouse_check_button_pressed(mb_left);if (l3E7442F1_0){	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C726F5C
		/// @DnDInput : 4
		/// @DnDParent : 3E7442F1
		/// @DnDArgument : "var" "gw"
		/// @DnDArgument : "value" "display_get_gui_width()"
		/// @DnDArgument : "var_1" "gh"
		/// @DnDArgument : "value_1" "display_get_gui_height()"
		/// @DnDArgument : "var_2" "mx"
		/// @DnDArgument : "value_2" "device_mouse_x_to_gui(0)"
		/// @DnDArgument : "var_3" "my"
		/// @DnDArgument : "value_3" "device_mouse_y_to_gui(0)"
		var gw = display_get_gui_width();
		var gh = display_get_gui_height();
		var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 692A43CB
		/// @DnDParent : 3E7442F1
		/// @DnDArgument : "expr" "mx > gw/2 - 100 && mx < gw/2 + 100 && my > gh/2 + 20 && my < gh/2 + 60"
		if(mx > gw/2 - 100 && mx < gw/2 + 100 && my > gh/2 + 20 && my < gh/2 + 60){	/// @DnDAction : YoYo Games.Game.Restart_Game
			/// @DnDVersion : 1
			/// @DnDHash : 4D488340
			/// @DnDParent : 692A43CB
			game_restart();}}}