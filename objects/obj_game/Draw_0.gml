/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 23E67074
/// @DnDArgument : "expr" "room"
var l23E67074_0 = room;
switch(l23E67074_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 21F02EC8
	/// @DnDParent : 23E67074
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1B9338C2
		/// @DnDParent : 21F02EC8
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 5AD24CFB
		/// @DnDParent : 21F02EC8
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "14dff9c1-05ea-4435-8ba1-b41ca4b9d4f6"
		var l5AD24CFB_0 = sprite_get_width(spr_lives);
		var l5AD24CFB_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l5AD24CFB_2 = __dnd_lives; l5AD24CFB_2 > 0; --l5AD24CFB_2) {
			draw_sprite(spr_lives, 0, 20 + l5AD24CFB_1, 40);
			l5AD24CFB_1 += l5AD24CFB_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 58B4BC11
	/// @DnDParent : 23E67074
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 67416932
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6082F1EA
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "color" "$FF0CF2FF"
		draw_set_colour($FF0CF2FF & $ffffff);
		var l6082F1EA_0=($FF0CF2FF >> 24);
		draw_set_alpha(l6082F1EA_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2A738943
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4627D8F8
		/// @DnDParent : 58B4BC11
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4627D8F8_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4627D8F8_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0767B3FD
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win!""
		draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 78B0909A
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/LEFT/RIGHT keys.""
		draw_text(250, 230, string("Move with UP/LEFT/RIGHT keys.") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 39E2BACD
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot.""
		draw_text(250, 260, string("Press SPACE to shoot.") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6E4B1CDC
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "color" "$FF0CF2FF"
		draw_set_colour($FF0CF2FF & $ffffff);
		var l6E4B1CDC_0=($FF0CF2FF >> 24);
		draw_set_alpha(l6E4B1CDC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3F1899DC
		/// @DnDParent : 58B4BC11
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2380928B
		/// @DnDParent : 58B4BC11
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0C2DCBC4
		/// @DnDParent : 58B4BC11
		draw_set_colour($FFFFFFFF & $ffffff);
		var l0C2DCBC4_0=($FFFFFFFF >> 24);
		draw_set_alpha(l0C2DCBC4_0 / $ff);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 56B6EB07
	/// @DnDParent : 23E67074
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 63991F22
		/// @DnDParent : 56B6EB07
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 194B7080
		/// @DnDParent : 56B6EB07
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l194B7080_0=($FF0000FF >> 24);
		draw_set_alpha(l194B7080_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 390F0F7B
		/// @DnDParent : 56B6EB07
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7737D1C4
		/// @DnDParent : 56B6EB07
		draw_set_colour($FFFFFFFF & $ffffff);
		var l7737D1C4_0=($FFFFFFFF >> 24);
		draw_set_alpha(l7737D1C4_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 7728B531
		/// @DnDParent : 56B6EB07
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 391CAB0B
		/// @DnDParent : 56B6EB07
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 06FB062D
		/// @DnDParent : 56B6EB07
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0BA88BD2
	/// @DnDParent : 23E67074
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E3B2072
		/// @DnDParent : 0BA88BD2
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1BBC7770
		/// @DnDParent : 0BA88BD2
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l1BBC7770_0=($FF00FF00 >> 24);
		draw_set_alpha(l1BBC7770_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 715ED973
		/// @DnDParent : 0BA88BD2
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 150, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 672FCBFB
		/// @DnDParent : 0BA88BD2
		draw_set_colour($FFFFFFFF & $ffffff);
		var l672FCBFB_0=($FFFFFFFF >> 24);
		draw_set_alpha(l672FCBFB_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 29FD10A6
		/// @DnDParent : 0BA88BD2
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6FCC8E75
		/// @DnDParent : 0BA88BD2
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART <<""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0DD74E05
		/// @DnDParent : 0BA88BD2
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}