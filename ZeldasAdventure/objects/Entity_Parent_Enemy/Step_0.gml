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
	speed = global.EnemySpeeds.Still;
	image_speed = 0;
	if global.EnemySound <> -1
	{
		audio_stop_sound(global.EnemySound)
	}
}

//Damage Animation
timerDuration -= 1
if timerDuration = 0 and timerIndex > 0
{
	timerIndex += 1
	if timerIndex = 6
	{
		EnemyState = EnemyStates.Move
		timerIndex = 0
	}
	timerDuration = 4
}
if timerIndex = 1
{
	direction = HitFromDirection
	speed = d(4)
}


//Don't move outside of the current tile
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
		speed =  global.EnemySpeeds.Still
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

if HitPoints <= 0
{
	instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Particle_EnemyDefeat)
	instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Pickup_ItemDrops)
	instance_destroy();
	
}
