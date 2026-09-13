//If the player is on the same tile
if IsPlayerOnSameTile_EnemyOrNPC() = true && global.CameraIsFading = false
{
	//Activate
	visible = true;
	if alarm_get(0) = -1
	{
		if EnemyState = EnemyStates.Move
		{
			alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
		}
	}
	//Attack
	if alarm_get(1) = -1
	{
		if EnemyState != EnemyStates.Damaged && EnemyState != EnemyStates.Attack
		{
			alarm_set(1, round(random_range(0, 3 * FrameRate)));
		}
	}
}
else
{
	//Deactivate
	visible = false
	if IsMenuVisible() = false && global.CameraIsFading = false
	{
		if path_index != -1
		{
			path_speed = 0
			path_end()
		}
		x = OriginX;
		y = OriginY;
		image_index = 0;
		direction = 90;
	}
	speed = global.EnemySpeeds.Still;
	image_speed = 0;
}

//Don't move outside of the current tile
if global.EnemyCannotTouchEdge = false
{
	if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
	y + 24 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
	x - 24 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
	y - 24 <= global.CurrentTile.y * tileHeight && vspeed < 0
	{
		if EnemyState != EnemyStates.Damaged
		{
			ChangeDirection = true;
		}
		else
		{
			speed = global.EnemySpeeds.Still
			DistanceLeftToKnockBack = 0
		}
	}
}
else
{
	
	if x + 52 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
	y + 52 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
	x - 52 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
	y - 52 <= global.CurrentTile.y * tileHeight && vspeed < 0
	{
		if EnemyState != EnemyStates.Damaged
		{
			ChangeDirection = true;
		}
		else
		{
			speed = global.EnemySpeeds.Still
			DistanceLeftToKnockBack = 0
		}
	}
}

if DamageDelay > 0
{
	DamageDelay -=1
}
if EnemyState != EnemyStates.Damaged
{
	image_speed = speed
}
else
{
	image_speed = 0
}

