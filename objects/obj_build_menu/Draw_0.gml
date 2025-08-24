/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AFB1563
/// @DnDArgument : "var" "anchor_ref"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(anchor_ref == noone)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ADEC534
	/// @DnDInput : 2
	/// @DnDParent : 4AFB1563
	/// @DnDArgument : "expr" "anchor_ref.x"
	/// @DnDArgument : "expr_1" "anchor_ref.y"
	/// @DnDArgument : "var" "temp_x"
	/// @DnDArgument : "var_1" "temp_y"
	temp_x = anchor_ref.x;
	temp_y = anchor_ref.y;

	/// @DnDAction : YoYo Games.Drawing.Draw_Ellipse
	/// @DnDVersion : 1
	/// @DnDHash : 6C4A726A
	/// @DnDParent : 4AFB1563
	/// @DnDArgument : "x1" "temp_x - 400"
	/// @DnDArgument : "y1" "temp_y - 400"
	/// @DnDArgument : "x2" "temp_x + 400"
	/// @DnDArgument : "y2" "temp_y + 400"
	draw_ellipse(temp_x - 400, temp_y - 400, temp_x + 400, temp_y + 400, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 20D4E526
	/// @DnDParent : 4AFB1563
	/// @DnDArgument : "x" "-30"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-30"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""50""
	draw_text(x + -30, y + -30, string("50") + "");}