/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5F205640
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "caption" ""Wave: " + string(wave_number) + " | Level: " + string(level_number)"
draw_text(10, 80, string("Wave: " + string(wave_number) + " | Level: " + string(level_number)) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 27FF5353
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "caption" ""Enemies: " + string(queue_index) + "/" + string(ds_list_size(spawn_queue))"
draw_text(10, 100, string("Enemies: " + string(queue_index) + "/" + string(ds_list_size(spawn_queue))) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 48FBF19E
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "caption" ""State: " + wave_state"
draw_text(10, 120, string("State: " + wave_state) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1B16FB76
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "140"
/// @DnDArgument : "caption" ""Next spawn: " + string(spawn_rate - spawn_timer)"
draw_text(10, 140, string("Next spawn: " + string(spawn_rate - spawn_timer)) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1CD65134
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "caption" ""Zombies alive: " + string(instance_number(obj_zombie))"
draw_text(10, 160, string("Zombies alive: " + string(instance_number(obj_zombie))) + "");