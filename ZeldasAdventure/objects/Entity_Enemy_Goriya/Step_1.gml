if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case 0 :
			sprite_index = Sprite_Enemy_Goriya_East
			break;
		case 270 :
			sprite_index = Sprite_Enemy_Goriya_South
			break;
		case 180 :
			sprite_index = Sprite_Enemy_Goriya_West
			break;
		case 90 :
			sprite_index = Sprite_Enemy_Goriya_North
			break;
	}

	if Script_AggroRange() = true
	{
		speed = d(global.EnemySpeeds.Medium)
	}
	else
	{
		speed = d(global.EnemySpeeds.Slow)
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
		if Script_AggroRange() = true
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
	}
	else
	{
		speed =  global.EnemySpeeds.Still
	}
	alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
	ChangeDirection = false;
}
