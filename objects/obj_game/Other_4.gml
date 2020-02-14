/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13AC7666
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7A1E7A2A
	/// @DnDParent : 13AC7666
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2C575B95
	/// @DnDParent : 13AC7666
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 6ADE021D
		/// @DnDInput : 2
		/// @DnDParent : 2C575B95
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D0EE406
		/// @DnDParent : 2C575B95
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 54762ADC
			/// @DnDParent : 1D0EE406
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 46769BEB
		/// @DnDParent : 2C575B95
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0A3CA049
			/// @DnDParent : 46769BEB
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 704077B6
		/// @DnDInput : 2
		/// @DnDParent : 2C575B95
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EA37946
		/// @DnDParent : 2C575B95
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5789A589
			/// @DnDParent : 3EA37946
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 60A760C0
		/// @DnDParent : 2C575B95
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5234388A
			/// @DnDParent : 60A760C0
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3DDCA385
		/// @DnDParent : 2C575B95
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "a3362875-c4b1-4e04-a97e-7ff47adcadea"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}