if EnemyState != EnemyStates.Damaged
{
	if Script_AggroRange() = true
	{
		if speed = RegularSpeed
		{
			if global.EnemySoundPlaying = false
			{
				global.EnemySound = audio_play_sound_relative(EnemySoundName,1000,false)
				global.EnemySoundPlaying = true
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
			if random_range(1,101) <= MoveToPlayerChance
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
	alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
	ChangeDirection = false;
}
