if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case 0 :
			sprite_index = Sprite_Enemy_Tumblebot_East
			break;
		case 270 :
			sprite_index = Sprite_Enemy_Tumblebot_South
			break;
		case 180 :
			sprite_index = Sprite_Enemy_Tumblebot_West
			break;
		case 90 :
			sprite_index = Sprite_Enemy_Tumblebot_North
			break;
	}

	if Script_AggroRange() = true
	{
		speed = global.EnemySpeeds.Medium
	}
	else
	{
		speed = global.EnemySpeeds.Slow
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
