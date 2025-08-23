/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61A1CDC3
/// @DnDArgument : "var" "occupied"
/// @DnDArgument : "value" "false"
if(occupied == false){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5EEFD52F
	/// @DnDParent : 61A1CDC3
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_turret"
	/// @DnDSaveInfo : "objectid" "obj_turret"
	instance_create_layer(x + x, y + y, "Instances", obj_turret);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 13017995
	/// @DnDApplyTo : other
	/// @DnDParent : 61A1CDC3
	with(other) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 356359E2
		/// @DnDParent : 13017995
		/// @DnDArgument : "expr" "other.id"
		/// @DnDArgument : "var" "my_anchor"
		my_anchor = other.id;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DAB3AB0
	/// @DnDParent : 61A1CDC3
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "occupied"
	occupied = true;}