if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case global.Directions.East :
			sprite_index = Sprite_Enemy_Goriya_East
			break;
		case global.Directions.South :
			sprite_index = Sprite_Enemy_Goriya_South
			break;
		case global.Directions.West :
			sprite_index = Sprite_Enemy_Goriya_West
			break;
		case global.Directions.North :
			sprite_index = Sprite_Enemy_Goriya_North
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

if EnemyState = EnemyStates.Attack
{
	run_alarm(ResetAlarm)
}

if ChangeDirection = true
{
	if EnemyState != EnemyStates.Damaged && EnemyState != EnemyStates.Attack
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
