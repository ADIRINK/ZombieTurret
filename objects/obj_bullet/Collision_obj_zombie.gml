/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6AFFBA89
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10401A0D
	/// @DnDParent : 6AFFBA89
	/// @DnDArgument : "expr" "-other.damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	hp += -other.damage;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 499B71B6
	/// @DnDApplyTo : other
	/// @DnDParent : 6AFFBA89
	with(other) instance_destroy();
}