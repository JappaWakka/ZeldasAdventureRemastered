//If the player is on the same tile
if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight &&
global.CameraIsPanning = false
{
	//Activate
	visible = true;
	if alarm_get(0) < 1
	{
		if EnemyState = EnemyStates.Move
		{
			alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
		}
	}
	//Play enemy sound
	if alarm_get(1) = -1
	{
		alarm_set(1, random_range(4*room_speed,10*room_speed));
	}
}
else
{
	//Deactivate
	visible = false
	x = OriginX;
	y = OriginY;
	image_index = 0;
	direction = 90;
	speed = 0;
	image_speed = 0;
	if global.EnemySound <> -1
	{
		audio_stop_sound(global.EnemySound)
	}
}

//Don't move outside of the current tile
if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + 24 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - 24 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - 24 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	ChangeDirection = true;
}


image_speed = speed