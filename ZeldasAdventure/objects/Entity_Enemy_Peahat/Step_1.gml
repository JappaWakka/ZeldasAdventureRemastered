if EnemyState != EnemyStates.Damaged
{
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
