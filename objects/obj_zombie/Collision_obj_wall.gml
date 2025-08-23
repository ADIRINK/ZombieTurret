/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4316435D
/// @DnDArgument : "var" "can_climb"
/// @DnDArgument : "value" "true"
if(can_climb == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B7F8F52
	/// @DnDParent : 4316435D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_climbing"
	is_climbing = true;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 77913A5D
	/// @DnDParent : 4316435D
	/// @DnDArgument : "instvar" "19"
	gravity = 0;}