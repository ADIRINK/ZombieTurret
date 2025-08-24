/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09D7C059
/// @DnDArgument : "var" "game_over"
/// @DnDArgument : "value" "true"
if(game_over == true){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
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