/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7F820781
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_anchor_empty"
/// @DnDSaveInfo : "sprite" "spr_anchor_empty"
draw_sprite(spr_anchor_empty, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2285B251
/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, id)"
if(position_meeting(mouse_x, mouse_y, id)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09ED2B47
	/// @DnDParent : 2285B251
	/// @DnDArgument : "var" "occupied"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "true"
	if(!(occupied == true)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1C695C95
		/// @DnDParent : 09ED2B47
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "image_xscale+0.1"
		/// @DnDArgument : "yscale" "image_yscale+0.1"
		/// @DnDArgument : "alpha" "0.7"
		/// @DnDArgument : "sprite" "spr_anchor_empty"
		/// @DnDSaveInfo : "sprite" "spr_anchor_empty"
		draw_sprite_ext(spr_anchor_empty, 0, x + 0, y + 0, image_xscale+0.1, image_yscale+0.1, 0, $FFFFFF & $ffffff, 0.7);}}