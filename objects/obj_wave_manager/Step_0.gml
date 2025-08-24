/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44A149EF
/// @DnDInput : 2
/// @DnDArgument : "expr" "spawn_timer+1"
/// @DnDArgument : "expr_1" "max(20, 60 - (level_number*5))"
/// @DnDArgument : "var" "spawn_timer"
/// @DnDArgument : "var_1" "spawn_rate"
spawn_timer = spawn_timer+1;
spawn_rate = max(20, 60 - (level_number*5));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 295DAF2A
/// @DnDArgument : "var" "spawn_timer"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "spawn_rate"
if(spawn_timer >= spawn_rate){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29BC2E12
	/// @DnDParent : 295DAF2A
	/// @DnDArgument : "var" "queue_index"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "ds_list_size(spawn_queue)"
	if(queue_index < ds_list_size(spawn_queue)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CF2E9CC
		/// @DnDParent : 29BC2E12
		/// @DnDArgument : "var" "ds_list_find_value(spawn_queue,queue_index)"
		if(ds_list_find_value(spawn_queue,queue_index) == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1F7A61F2
			/// @DnDParent : 0CF2E9CC
			/// @DnDArgument : "xpos" "room_width - 50"
			/// @DnDArgument : "ypos" "room_height - 100"
			/// @DnDArgument : "objectid" "obj_zombie"
			/// @DnDSaveInfo : "objectid" "obj_zombie"
			instance_create_layer(room_width - 50, room_height - 100, "Instances", obj_zombie);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28ECD261
			/// @DnDInput : 2
			/// @DnDParent : 0CF2E9CC
			/// @DnDArgument : "expr" "queue_index+1"
			/// @DnDArgument : "var" "queue_index"
			/// @DnDArgument : "var_1" "spawn_timer"
			queue_index = queue_index+1;
			spawn_timer = 0;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4E410AD9
	/// @DnDParent : 295DAF2A
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EFD9892
		/// @DnDParent : 4E410AD9
		/// @DnDArgument : "expr" ""waiting""
		/// @DnDArgument : "var" "wave_state"
		wave_state = "waiting";
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 204292F0
		/// @DnDParent : 4E410AD9
		/// @DnDArgument : "obj" "obj_zombie"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "obj_zombie"
		var l204292F0_0 = false;l204292F0_0 = instance_exists(obj_zombie);if(!l204292F0_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F51B8F6
			/// @DnDInput : 3
			/// @DnDParent : 204292F0
			/// @DnDArgument : "expr" "wave_number+1"
			/// @DnDArgument : "var" "wave_number"
			/// @DnDArgument : "var_1" "queue_index"
			/// @DnDArgument : "var_2" "spawn_timer"
			wave_number = wave_number+1;
			queue_index = 0;
			spawn_timer = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 58442708
			/// @DnDParent : 204292F0
			/// @DnDArgument : "var" "wave_number"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "2"
			if(wave_number > 2){	/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 40D6B006
				/// @DnDApplyTo : {obj_game_controller}
				/// @DnDParent : 58442708
				with(obj_game_controller) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 78C9079C
					/// @DnDInput : 2
					/// @DnDParent : 40D6B006
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "expr_1" "true"
					/// @DnDArgument : "var" "game_over"
					/// @DnDArgument : "var_1" "victory"
					game_over = true;
					victory = true;
				
					/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 28B12A9F
					/// @DnDApplyTo : other
					/// @DnDParent : 40D6B006
					with(other) instance_destroy();
				}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 54A9B89F
			/// @DnDParent : 204292F0
			else{	/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 12C22193
				/// @DnDParent : 54A9B89F
				/// @DnDArgument : "function" "ds_list_clear"
				/// @DnDArgument : "arg" "spawn_queue"
				ds_list_clear(spawn_queue);
			
				/// @DnDAction : YoYo Games.Instances.Call_User_Event
				/// @DnDVersion : 1
				/// @DnDHash : 134E375A
				/// @DnDParent : 54A9B89F
				event_user(0);}}}}