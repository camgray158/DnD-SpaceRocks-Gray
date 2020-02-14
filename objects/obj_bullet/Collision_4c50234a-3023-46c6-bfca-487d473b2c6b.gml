/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7C0AF906
/// @DnDApplyTo : e739d55c-3372-4ab4-ac44-560dd56a1f41
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3814F77C
	/// @DnDParent : 7C0AF906
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 31464B20
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 31CEEDD3
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58AE569F
	/// @DnDParent : 31CEEDD3
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FB41B75
	/// @DnDParent : 31CEEDD3
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_large"
	if(sprite_index == spr_asteroid_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 1ADCFD09
		/// @DnDParent : 4FB41B75
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0E2699D0
			/// @DnDParent : 1ADCFD09
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "a3362875-c4b1-4e04-a97e-7ff47adcadea"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A82B272
			/// @DnDParent : 1ADCFD09
			/// @DnDArgument : "expr" "spr_asteroid_medium"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07B0A3D5
	/// @DnDParent : 31CEEDD3
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_medium"
	if(sprite_index == spr_asteroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6BF3C41E
		/// @DnDParent : 07B0A3D5
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 44506735
			/// @DnDParent : 6BF3C41E
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "a3362875-c4b1-4e04-a97e-7ff47adcadea"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CCF5FA6
			/// @DnDParent : 6BF3C41E
			/// @DnDArgument : "expr" "spr_asteroid_small"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 32841297
	/// @DnDParent : 31CEEDD3
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 60AE7EAF
		/// @DnDParent : 32841297
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "7fd98f14-b881-40ba-94c3-921fee74f722"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}