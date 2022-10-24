if Entity_Player.Facing = global.Directions.East
{
	image_index = 0;
}
else if Entity_Player.Facing = global.Directions.West
{
	image_index = 1;
}
else if Entity_Player.Facing = global.Directions.South
{
	image_index = 2;
}
else if Entity_Player.Facing = global.Directions.North
{
	image_index = 3;
}
alarm[0] = 15;