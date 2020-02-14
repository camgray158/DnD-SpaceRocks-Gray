/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3AA9DE79
/// @DnDArgument : "expr" "room"
var l3AA9DE79_0 = room;
switch(l3AA9DE79_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5DFBD2B9
	/// @DnDParent : 3AA9DE79
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2AC9773D
		/// @DnDParent : 5DFBD2B9
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "4fe56349-ae18-4e5a-a541-6824a7711b2e"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 47691D9D
	/// @DnDParent : 3AA9DE79
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 35D6408B
		/// @DnDParent : 47691D9D
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0BD53404
	/// @DnDParent : 3AA9DE79
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 5D539CF8
		/// @DnDParent : 0BD53404
		game_restart();
		break;
}