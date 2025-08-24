/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44A149EF
/// @DnDInput : 2
/// @DnDArgument : "expr" "+1"
/// @DnDArgument : "expr_1" "max(20, 60 - (level_number*5))"
/// @DnDArgument : "var" "spawn_timer"
/// @DnDArgument : "var_1" "spawn_rate"
spawn_timer = +1;
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
		if(ds_list_find_value(spawn_queue,queue_index) == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25D0121D
			/// @DnDParent : 0CF2E9CC
			/// @DnDArgument : "expr" ""spawning""
			/// @DnDArgument : "var" "wave_state"
			wave_state = "spawning";
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
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
			/// @DnDArgument : "expr" "+1"
			/// @DnDArgument : "var" "queue_index"
			/// @DnDArgument : "var_1" "spawn_timer"
			queue_index = +1;
			spawn_timer = 0;}}}