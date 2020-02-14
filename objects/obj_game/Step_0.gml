/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2683515E
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1B29FD6B
	/// @DnDParent : 2683515E
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3D9B53F6
		/// @DnDParent : 1B29FD6B
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "8f5d9b00-b0f7-415b-94e3-1977f79f91f5"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4CFEACE2
	/// @DnDParent : 2683515E
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2DAE00E9
		/// @DnDParent : 4CFEACE2
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "0b022f8e-5c55-43dd-8695-891cb99ff2be"
		room_goto(rm_gameover);
	}
}