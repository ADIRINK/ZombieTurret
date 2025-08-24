/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 173FE327
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 35A7B901
	/// @DnDApplyTo : obj_game_controller
	/// @DnDParent : 173FE327
	with(obj_game_controller) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 427C99DC
		/// @DnDParent : 35A7B901
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "game_over"
		game_over = true;
	}}