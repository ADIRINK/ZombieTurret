/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BADE553
/// @DnDArgument : "var" "occupied"
/// @DnDArgument : "value" "false"
if(occupied == false){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7F820781
	/// @DnDParent : 2BADE553
	/// @DnDArgument : "sprite" "spr_anchor_empty"
	/// @DnDSaveInfo : "sprite" "spr_anchor_empty"
	draw_sprite(spr_anchor_empty, 0, 0, 0);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2285B251
	/// @DnDParent : 2BADE553
	/// @DnDArgument : "expr" "position_meeting(mouse_x, mouse_y, id)"
	if(position_meeting(mouse_x, mouse_y, id)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1C695C95
		/// @DnDParent : 2285B251
		draw_sprite_ext(noone, 0, 0, 0, 1, 1, 0, $FFFFFF & $ffffff, 1);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5A3B45E8
	/// @DnDParent : 2BADE553
	else{}}