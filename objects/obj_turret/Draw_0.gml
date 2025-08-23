/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2851DA6D
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "sprite" "spr_turret_base"
/// @DnDSaveInfo : "sprite" "spr_turret_base"
draw_sprite(spr_turret_base, 0, x, y);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 04E49BD7
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-18"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "barrel_angle"
/// @DnDArgument : "sprite" "spr_turret_barrel"
/// @DnDSaveInfo : "sprite" "spr_turret_barrel"
draw_sprite_ext(spr_turret_barrel, 0, x + 8, y + -18, 1, 1, barrel_angle, $FFFFFF & $ffffff, 1);