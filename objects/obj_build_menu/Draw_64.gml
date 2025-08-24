/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 4FC250F0
/// @DnDArgument : "x1" "menu_x-50"
/// @DnDArgument : "y1" "menu_y-80"
/// @DnDArgument : "x2" "menu_x+50"
/// @DnDArgument : "y2" "menu_y+20"
draw_rectangle(menu_x-50, menu_y-80, menu_x+50, menu_y+20, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0BC90924
/// @DnDArgument : "x" "menu_x-30"
/// @DnDArgument : "y" "menu_y-50"
/// @DnDArgument : "sprite" "spr_turret_base"
/// @DnDSaveInfo : "sprite" "spr_turret_base"
draw_sprite(spr_turret_base, 0, menu_x-30, menu_y-50);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 02E9F8DD
/// @DnDArgument : "expr" "point_distance(mouse_x, mouse_y, x-30, y-50) < 20"
if(point_distance(mouse_x, mouse_y, x-30, y-50) < 20){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D678D83
	/// @DnDParent : 02E9F8DD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "selected_turret"
	selected_turret = 1;}