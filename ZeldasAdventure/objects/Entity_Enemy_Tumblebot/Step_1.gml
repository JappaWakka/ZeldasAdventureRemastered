if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case global.Directions.East :
			sprite_index = Sprite_Enemy_Tumblebot_East
			break;
		case global.Directions.South :
			sprite_index = Sprite_Enemy_Tumblebot_South
			break;
		case global.Directions.West :
			sprite_index = Sprite_Enemy_Tumblebot_West
			break;
		case global.Directions.North :
			sprite_index = Sprite_Enemy_Tumblebot_North
			break;
	}

	if Script_AggroRange() = true
	{
		if speed = RegularSpeed
		{
			if global.EnemySoundPlaying = false
			{
				if global.EnemySound[0] != -1 and global.EnemySound[1] != -1
				{
					global.EnemySound = [EnemySoundName,x]
				}
				else
				{
					if irandom_range(0,100) <= 50
					{
						global.EnemySound = [EnemySoundName,x]
					}
				}
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
		EnemyChangeDirection_Straight()
	}
	else
	{
		speed =  global.EnemySpeeds.Still
	}
	alarm_set(0, round(random_range(ChangeDelay_Min,ChangeDelay_Max)));
	ChangeDirection = false;
}
