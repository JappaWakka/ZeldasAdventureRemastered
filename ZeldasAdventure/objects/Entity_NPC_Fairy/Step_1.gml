if EnemyState != EnemyStates.Damaged
{
	if Script_AggroRange() = true
	{
		//if speed = RegularSpeed
		//{
		//	if global.EnemySoundPlaying = false
		//	{
		//		if global.EnemySound[0] != -1 and global.EnemySound[1] != -1
		//		{
		//			global.EnemySound = [EnemySoundName,x]
		//		}
		//		else
		//		{
		//			if irandom_range(0,100) <= 50
		//			{
		//				global.EnemySound = [EnemySoundName,x]
		//			}
		//		}
		//	}
		//}
		speed = AggroSpeed
		if MoveToPlayerChance = 80
		{
			MoveToPlayerChance = 100
			ChangeDirection = true
		}		
	}
	else
	{
		speed = RegularSpeed
		MoveToPlayerChance = 80
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
