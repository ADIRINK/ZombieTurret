/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7547B11A
/// @DnDArgument : "var" "is_climbing"
/// @DnDArgument : "value" "true"
if(is_climbing == true){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2D0AF4DF
	/// @DnDParent : 7547B11A
	/// @DnDArgument : "value" "-0.5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -0.5;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 12179735
	/// @DnDParent : 7547B11A
	/// @DnDArgument : "value" "-0.5"
	/// @DnDArgument : "instvar" "5"
	vspeed = -0.5;

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 12D9D92F
	/// @DnDParent : 7547B11A
	/// @DnDArgument : "x" "-1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "obj" "obj_wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_wall"
	var l12D9D92F_0 = collision_point(x + -1, y, obj_wall, true, 1);if(!(l12D9D92F_0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50EF5D9A
		/// @DnDParent : 12D9D92F
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_climbing"
		is_climbing = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 2043F69E
		/// @DnDParent : 12D9D92F
		/// @DnDArgument : "value" "0.5"
		/// @DnDArgument : "instvar" "19"
		gravity = 0.5;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 030E2135
else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 65784768
	/// @DnDParent : 030E2135
	/// @DnDArgument : "value" "- move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += - move_speed;}