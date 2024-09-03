if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case global.Directions.East :
			sprite_index = Sprite_Enemy_Mobilin_East
			break;
		case global.Directions.South :
			sprite_index = Sprite_Enemy_Mobilin_South
			break;
		case global.Directions.West :
			sprite_index = Sprite_Enemy_Mobilin_West
			break;
		case global.Directions.North :
			sprite_index = Sprite_Enemy_Mobilin_North
			break;
	}

	if Script_AggroRange() = true
	{
		if speed = RegularSpeed
		{
			if global.EnemySoundPlaying = false
			{
				global.EnemySound = [EnemySoundName,x]
			}
		}
		speed = AggroSpeed
	}
	else
	{
		speed = RegularSpeed
	}
}

if ChangeDirection = true
{
	if EnemyState != EnemyStates.Damaged
	{
		if Script_AggroRange() = true
		{
			if round(random_range(0,100)) <= MoveToPlayerChance
			{
				if Entity_Player.x < self.x
				{
					if Entity_Player.y < self.y
					{
						direction = choose(global.Directions.West,global.Directions.North);
					}
					else
					{
						direction = choose(global.Directions.West,global.Directions.South);
					}
				}
				else
				{
					if Entity_Player.y < self.y
					{
						direction = choose(global.Directions.East,global.Directions.North);
					}
					else
					{
						direction = choose(global.Directions.East,global.Directions.South);
					}
				}
			}
		}
		else
		{
			direction = choose(global.Directions.North,global.Directions.West,global.Directions.East,global.Directions.South);
		}
	}
	else
	{
		speed =  global.EnemySpeeds.Still
	}
	alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
	ChangeDirection = false;
}
