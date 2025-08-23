/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 6B255FD6
/// @DnDArgument : "x1" "10"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "x2" "210"
/// @DnDArgument : "y2" "30"
draw_rectangle(10, 10, 210, 30, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 0F45FE4C
/// @DnDArgument : "x1" "10"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "x2" "10 + (hp/max_hp) * 200"
/// @DnDArgument : "y2" "30"
/// @DnDArgument : "fill" "1"
draw_rectangle(10, 10, 10 + (hp/max_hp) * 200, 30, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2AC953F9
/// @DnDArgument : "x" "220"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "caption" ""Base: " + string(hp) + "/" + string(max_hp)"
draw_text(220, 15, string("Base: " + string(hp) + "/" + string(max_hp)) + "");