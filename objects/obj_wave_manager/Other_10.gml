/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 52A05240
/// @DnDArgument : "function" "ds_list_clear"
/// @DnDArgument : "arg" "spawn_queue"
ds_list_clear(spawn_queue);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11929EB9
/// @DnDArgument : "expr" "3 + (wave_number * 2)"
/// @DnDArgument : "var" "enemy_count"
enemy_count = 3 + (wave_number * 2);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DF586A4
/// @DnDArgument : "var" "wave_number"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "5"
if(wave_number <= 5){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19B69BC1
	/// @DnDParent : 4DF586A4
	/// @DnDArgument : "expr" "enemy_count + 5"
	/// @DnDArgument : "var" "enemy_count"
	enemy_count = enemy_count + 5;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 274306B7
/// @DnDArgument : "var" "wave_number"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "10"
if(wave_number > 10){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18B2E7BD
	/// @DnDParent : 274306B7
	/// @DnDArgument : "expr" "enemy_count + 10"
	/// @DnDArgument : "var" "enemy_count"
	enemy_count = enemy_count + 10;}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 54A4AD1B
/// @DnDArgument : "times" "enemy_count"
repeat(enemy_count){	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 71214AFB
	/// @DnDParent : 54A4AD1B
	/// @DnDArgument : "var" "spawn_queue"
	ds_list_add(spawn_queue, 0);}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73CBB924
/// @DnDInput : 3
/// @DnDArgument : "expr" ""spawning""
/// @DnDArgument : "var" "wave_state"
/// @DnDArgument : "var_1" "queue_index"
/// @DnDArgument : "var_2" "spawn_timer"
wave_state = "spawning";
queue_index = 0;
spawn_timer = 0;