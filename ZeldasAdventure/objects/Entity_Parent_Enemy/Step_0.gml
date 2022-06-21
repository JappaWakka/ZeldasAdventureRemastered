//If the player is on the same tile
if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	//Activate
	visible = true;
	if alarm_get(0) < 1
	{
		if MoveType = EnemyMoveTypes.Bouncing
		{
			alarm_set(0, 1);
		}
		else if MoveType <> EnemyMoveTypes.Still
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
	if MoveType = EnemyMoveTypes.Straight or MoveType = EnemyMoveTypes.Diagonally
	{
		ChangeDirection = true;
	}
	else if MoveType = EnemyMoveTypes.Bouncing
	{
		direction += 90;
	}
}
	
if ChangeDirection = true
{
	if MoveType = EnemyMoveTypes.Straight
	{
		if distance_to_object(Entity_Player) <= AttackModeRange
		{
			if random_range(1,101) <= MoveToPlayerChance
			{
				if Entity_Player.x < self.x
				{
					if Entity_Player.y < self.y
					{
						direction = choose(180,90);
					}
					else
					{
						direction = choose(180,270);
					}
				}
				else
				{
					if Entity_Player.y < self.y
					{
						direction = choose(0,90);
					}
					else
					{
						direction = choose(0,270);
					}
				}
			}
		}
		else
		{
			direction = choose(90,180,0,270);
		}
	alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
}
	else if MoveType = EnemyMoveTypes.Diagonally
	{
		direction = choose(135,225,45,315);
		alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
	}
	else if MoveType = EnemyMoveTypes.Bouncing
	{
		direction +=90
	}
	ChangeDirection = false
}
image_speed = speed