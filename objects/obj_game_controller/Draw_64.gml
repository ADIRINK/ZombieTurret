/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16607797
/// @DnDInput : 2
/// @DnDArgument : "expr" "display_get_gui_width()"
/// @DnDArgument : "expr_1" "display_get_gui_height()"
/// @DnDArgument : "var" "gw"
/// @DnDArgument : "var_1" "gh"
gw = display_get_gui_width();
gh = display_get_gui_height();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7490D528
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""Organic Material: " + string(currency)"
draw_text(10, 40, string("Organic Material: " + string(currency)) + "");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C894692
/// @DnDArgument : "var" "game_over"
/// @DnDArgument : "value" "true"
if(game_over == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D64F046
	/// @DnDParent : 7C894692
	/// @DnDArgument : "var" "victory"
	/// @DnDArgument : "value" "true"
	if(victory == true){	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 660D5B61
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "color" "$FF000000"
		draw_set_colour($FF000000 & $ffffff);
		var l660D5B61_0=($FF000000 >> 24);
		draw_set_alpha(l660D5B61_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 3420DA6B
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "alpha" "0.7"
		draw_set_alpha(0.7);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 4EA5EBEB
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "x2" "gw"
		/// @DnDArgument : "y2" "gh"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(0, 0, gw, gh, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 32F9611C
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "color" "$FF666666"
		draw_set_colour($FF666666 & $ffffff);
		var l32F9611C_0=($FF666666 >> 24);
		draw_set_alpha(l32F9611C_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 4F2D42F8
		/// @DnDParent : 6D64F046
		draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5BC2ECF6
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "halign" "fa_center"
		/// @DnDArgument : "valign" "fa_middle"
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1FB76832
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "x" "gw/2"
		/// @DnDArgument : "y" "gh/2-50"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""VICTORY""
		draw_text_transformed(gw/2, gh/2-50, string("VICTORY") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 0A92FB51
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "x1" "gw/2-100"
		/// @DnDArgument : "y1" "gh/2+20"
		/// @DnDArgument : "x2" "gw/2+100"
		/// @DnDArgument : "y2" "gh/2+60"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(gw/2-100, gh/2+20, gw/2+100, gh/2+60, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 19A63B65
		/// @DnDParent : 6D64F046
		draw_set_colour($FFFFFFFF & $ffffff);
		var l19A63B65_0=($FFFFFFFF >> 24);
		draw_set_alpha(l19A63B65_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 076439C6
		/// @DnDParent : 6D64F046
		/// @DnDArgument : "x" "gw/2"
		/// @DnDArgument : "y" "gh/2+40"
		/// @DnDArgument : "caption" ""Continue to Next Level""
		draw_text(gw/2, gh/2+40, string("Continue to Next Level") + "");}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0D5DF7D8
	/// @DnDParent : 7C894692
	else{	/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 13EC3FBA
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "color" "$FF000000"
		draw_set_colour($FF000000 & $ffffff);
		var l13EC3FBA_0=($FF000000 >> 24);
		draw_set_alpha(l13EC3FBA_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 01F47C22
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "alpha" "0.7"
		draw_set_alpha(0.7);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 15B136EE
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "x2" "gw"
		/// @DnDArgument : "y2" "gh"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(0, 0, gw, gh, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 26077780
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "color" "$FF666666"
		draw_set_colour($FF666666 & $ffffff);
		var l26077780_0=($FF666666 >> 24);
		draw_set_alpha(l26077780_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 69920FC1
		/// @DnDParent : 0D5DF7D8
		draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 71652D22
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "halign" "fa_center"
		/// @DnDArgument : "valign" "fa_middle"
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 12F91DE2
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "x" "gw/2"
		/// @DnDArgument : "y" "gh/2-50"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" ""GAME OVER""
		draw_text_transformed(gw/2, gh/2-50, string("GAME OVER") + "", 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 07DD8F87
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "x1" "gw/2-100"
		/// @DnDArgument : "y1" "gh/2+20"
		/// @DnDArgument : "x2" "gw/2+100"
		/// @DnDArgument : "y2" "gh/2+60"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(gw/2-100, gh/2+20, gw/2+100, gh/2+60, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7D2E72F4
		/// @DnDParent : 0D5DF7D8
		draw_set_colour($FFFFFFFF & $ffffff);
		var l7D2E72F4_0=($FFFFFFFF >> 24);
		draw_set_alpha(l7D2E72F4_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 091BC1D4
		/// @DnDParent : 0D5DF7D8
		/// @DnDArgument : "x" "gw/2"
		/// @DnDArgument : "y" "gh/2+40"
		/// @DnDArgument : "caption" ""Click to Restart""
		draw_text(gw/2, gh/2+40, string("Click to Restart") + "");}}