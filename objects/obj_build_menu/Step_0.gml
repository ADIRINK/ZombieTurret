/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 029FD1C1
/// @DnDArgument : "expr" "menu_age + 1"
/// @DnDArgument : "var" "menu_age"
menu_age = menu_age + 1;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 5DBC81A2
var l5DBC81A2_0;l5DBC81A2_0 = mouse_check_button_pressed(mb_left);if (l5DBC81A2_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2263874C
	/// @DnDParent : 5DBC81A2
	/// @DnDArgument : "var" "menu_age"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "10"
	if(menu_age > 10){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 02C18C32
		/// @DnDParent : 2263874C
		/// @DnDArgument : "expr" "point_distance(mouse_x, mouse_y, x-30, y-50) < 20"
		if(point_distance(mouse_x, mouse_y, x-30, y-50) < 20){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0F1347C2
			/// @DnDParent : 02C18C32
			/// @DnDArgument : "var" "obj_game_controller.currency"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "50"
			if(obj_game_controller.currency >= 50){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1BCC081F
				/// @DnDParent : 0F1347C2
				/// @DnDArgument : "xpos" "anchor_ref.x"
				/// @DnDArgument : "ypos" "anchor_ref.y"
				/// @DnDArgument : "objectid" "obj_turret"
				/// @DnDSaveInfo : "objectid" "obj_turret"
				instance_create_layer(anchor_ref.x, anchor_ref.y, "Instances", obj_turret);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 5E0031B8
				/// @DnDApplyTo : anchor_ref
				/// @DnDParent : 0F1347C2
				with(anchor_ref) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 10FB4C8C
					/// @DnDParent : 5E0031B8
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "occupied"
					occupied = true;
				}
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 654F8ADE
				/// @DnDApplyTo : {obj_game_controller}
				/// @DnDParent : 0F1347C2
				with(obj_game_controller) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6B0DA54C
					/// @DnDParent : 654F8ADE
					/// @DnDArgument : "expr" "currency - 50"
					/// @DnDArgument : "var" "currency"
					currency = currency - 50;
				}
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 24723652
				/// @DnDParent : 0F1347C2
				instance_destroy();}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 4A251413
			/// @DnDParent : 02C18C32
			else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 298958D0
				/// @DnDParent : 4A251413
				/// @DnDArgument : "msg" ""Not enough material!""
				show_debug_message(string("Not enough material!"));}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5976697D
		/// @DnDParent : 2263874C
		else{	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 12FC5A23
			/// @DnDParent : 5976697D
			/// @DnDArgument : "expr" "point_distance(mouse_x, mouse_y, x-30, y-50) > 20"
			if(point_distance(mouse_x, mouse_y, x-30, y-50) > 20){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 756D2B6F
				/// @DnDApplyTo : {obj_build_menu}
				/// @DnDParent : 12FC5A23
				with(obj_build_menu) instance_destroy();}}}}