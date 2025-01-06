if Register_Registered("BlueSardakDefeated") = true
{
	instance_destroy()
}

if EnemyState != EnemyStates.Damaged
{
	//Change sprite
	switch direction
	{
		case global.Directions.East :
			sprite_index = Sprite_Enemy_BlueSardak_East
			break;
		case global.Directions.South :
			sprite_index = Sprite_Enemy_BlueSardak_South
			break;
		case global.Directions.West :
			sprite_index = Sprite_Enemy_BlueSardak_West
			break;
		case global.Directions.North :
			sprite_index = Sprite_Enemy_BlueSardak_North
			break;
	}

	if Script_AggroRange() = true
	{
		speed = AggroSpeed
	}
	else
	{
		speed = RegularSpeed
	}
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
