/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5365DC67
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bullet"
/// @DnDSaveInfo : "objectid" "dd62e041-6438-49d0-a053-cbcce6deab8e"
var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 421D3887
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newBullet.direction"
newBullet.direction = image_angle;