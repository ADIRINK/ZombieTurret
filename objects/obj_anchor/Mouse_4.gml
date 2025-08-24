/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61A1CDC3
/// @DnDArgument : "var" "occupied"
/// @DnDArgument : "value" "false"
if(occupied == false){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 74300CEC
	/// @DnDParent : 61A1CDC3
	/// @DnDArgument : "obj" "obj_build_menu"
	/// @DnDSaveInfo : "obj" "obj_build_menu"
	var l74300CEC_0 = false;l74300CEC_0 = instance_exists(obj_build_menu);if(l74300CEC_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 05B4DCB9
		/// @DnDApplyTo : {obj_build_menu}
		/// @DnDParent : 74300CEC
		with(obj_build_menu) instance_destroy();}

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 752DF8A5
	/// @DnDParent : 61A1CDC3
	/// @DnDArgument : "value" "id"
	/// @DnDArgument : "var" "current_anchor"
	global.current_anchor = id;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5EEFD52F
	/// @DnDParent : 61A1CDC3
	/// @DnDArgument : "xpos" "mouse_x"
	/// @DnDArgument : "ypos" "mouse_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_build_menu"
	/// @DnDSaveInfo : "objectid" "obj_build_menu"
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_build_menu);

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
		/// @DnDArgument : "var" "anchor_ref"
		anchor_ref = other.id;
	}}