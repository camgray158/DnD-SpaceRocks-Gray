/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4C5856A1
/// @DnDApplyTo : e739d55c-3372-4ab4-ac44-560dd56a1f41
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 493A6A6C
	/// @DnDParent : 4C5856A1
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3BD5D51F
/// @DnDApplyTo : e739d55c-3372-4ab4-ac44-560dd56a1f41
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 28DD0A92
	/// @DnDParent : 3BD5D51F
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3823AD55
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 0605555F
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2013BE52
	/// @DnDParent : 0605555F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "7fd98f14-b881-40ba-94c3-921fee74f722"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}