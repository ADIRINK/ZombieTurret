/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00E8924D
/// @DnDComment : Calculate wave difficulty
/// @DnDInput : 2
/// @DnDArgument : "expr" "(level_number * 10) + (wave_number * 2)"
/// @DnDArgument : "expr_1" "ds_list_create()"
/// @DnDArgument : "var" "difficulty"
/// @DnDArgument : "var_1" "spawn_queue"
difficulty = (level_number * 10) + (wave_number * 2);
spawn_queue = ds_list_create();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F790E74
/// @DnDArgument : "expr" ""calculating...""
/// @DnDArgument : "var" "wave_state"
wave_state = "calculating...";

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B3F34BC
/// @DnDArgument : "var" "wave_number"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "3"
if(wave_number <= 3){	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2AE58CB9
	/// @DnDParent : 7B3F34BC
	/// @DnDArgument : "times" "3 + wave_number"
	repeat(3 + wave_number){	/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 533A3014
		/// @DnDParent : 2AE58CB9
		/// @DnDArgument : "var" "spawn_queue"
		ds_list_add(spawn_queue, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 257F4EB1
		/// @DnDParent : 2AE58CB9
		/// @DnDArgument : "expr" ""starting""
		/// @DnDArgument : "var" "wave_state"
		wave_state = "starting";}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E3DCB68
/// @DnDArgument : "var" "wave_number"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "7"
if(wave_number <= 7){	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 44D1BBFB
	/// @DnDParent : 3E3DCB68
	/// @DnDArgument : "times" "5 + (wave_number * 2)"
	repeat(5 + (wave_number * 2)){	/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 7AA5197F
		/// @DnDParent : 44D1BBFB
		/// @DnDArgument : "var" "spawn_queue"
		ds_list_add(spawn_queue, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E80B0FB
		/// @DnDParent : 44D1BBFB
		/// @DnDArgument : "expr" ""starting""
		/// @DnDArgument : "var" "wave_state"
		wave_state = "starting";}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 12D27D99
else{	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5AE72204
	/// @DnDParent : 12D27D99
	/// @DnDArgument : "times" "difficulty / 5"
	repeat(difficulty / 5){	/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 651CDF05
		/// @DnDParent : 5AE72204
		/// @DnDArgument : "var" "spawn_queue"
		ds_list_add(spawn_queue, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71F6EC65
		/// @DnDParent : 5AE72204
		/// @DnDArgument : "expr" ""starting""
		/// @DnDArgument : "var" "wave_state"
		wave_state = "starting";}}