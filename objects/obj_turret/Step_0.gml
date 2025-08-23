/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B37BFF7
/// @DnDArgument : "expr" "instance_nearest(x, y, obj_zombie)"
/// @DnDArgument : "var" "target"
target = instance_nearest(x, y, obj_zombie);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25D4625E
/// @DnDArgument : "expr" "target != noone && point_distance(x, y, target.x, target.y) <= range"
if(target != noone && point_distance(x, y, target.x, target.y) <= range){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78456F4C
	/// @DnDParent : 25D4625E
	/// @DnDArgument : "expr" " point_direction(x, y, target.x, target.y)"
	/// @DnDArgument : "var" "barrel_angle"
	barrel_angle =  point_direction(x, y, target.x, target.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02657246
	/// @DnDParent : 25D4625E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fire_cooldown"
	fire_cooldown += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BADA9E4
	/// @DnDParent : 25D4625E
	/// @DnDArgument : "var" "fire_cooldown"
	/// @DnDArgument : "op" "3"
	if(fire_cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4101045A
		/// @DnDParent : 6BADA9E4
		/// @DnDArgument : "xpos" "x + 8 + lengthdir_x(20, barrel_angle)"
		/// @DnDArgument : "ypos" "y - 18 + lengthdir_y(20, barrel_angle)"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		instance_create_layer(x + 8 + lengthdir_x(20, barrel_angle), y - 18 + lengthdir_y(20, barrel_angle), "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A325675
		/// @DnDParent : 6BADA9E4
		/// @DnDArgument : "expr" "instance_nearest(x, y, obj_bullet)"
		/// @DnDArgument : "var" "temp_bullet"
		temp_bullet = instance_nearest(x, y, obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 24EEED08
		/// @DnDApplyTo : temp_bullet
		/// @DnDParent : 6BADA9E4
		with(temp_bullet) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 174B793A
			/// @DnDParent : 24EEED08
			/// @DnDArgument : "expr" "other.barrel_angle"
			/// @DnDArgument : "var" "direction"
			direction = other.barrel_angle;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C5C4AFF
		/// @DnDParent : 6BADA9E4
		/// @DnDArgument : "expr" "fire_rate"
		/// @DnDArgument : "var" "fire_cooldown"
		fire_cooldown = fire_rate;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 660F0A21
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BE63C5B
	/// @DnDParent : 660F0A21
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "target"
	target = noone;}