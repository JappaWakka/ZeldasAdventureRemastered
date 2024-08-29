if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	if EnemyState != EnemyStates.Damaged
	{
		if ReturnPointPosition[0] <> -1 or ReturnPointPosition[1] <> -1
		{
			EnemyState = EnemyStates.Move
			image_speed = 1
			speed = global.EnemySpeeds.Slow
			
			if ReturnPointPosition[0] <> x or ReturnPointPosition[1] <> y
			{
				if ReturnPointPosition[0] < x - 0.6 and ReturnPointPosition[0] <> -1
				{
					direction = global.Directions.West
				}
				else if ReturnPointPosition[0] > x + 0.6 and ReturnPointPosition[0] <> -1
				{
					direction = global.Directions.East
				}
				else
				{
					if ReturnPointPosition[0] <> -1
					{
						x = ReturnPointPosition[0]
						ReturnPointPosition[0] = -1
					}
					if ReturnPointPosition[1] < y  - 0.6 and ReturnPointPosition[1] <> -1
					{
						direction = global.Directions.North;
					}
					else if ReturnPointPosition[1] > y + 0.6 and ReturnPointPosition[1] <> -1
					{
						direction = global.Directions.South;
					}
					else
					{
						if ReturnPointPosition[1] <> -1
						{
							y = ReturnPointPosition[1]
							ReturnPointPosition[1] = -1
							if EnemyState = EnemyStates.Move
							{
								image_speed = 1
							}
						}
					}
				}
			}
			else
			{
				ReturnPointPosition = [-1,-1]
			}
		}
		else
		{
			if CanContinue = true
			{
				var CoordinateIndex = floor(FrameIndex / 4)
				EnemyState = EnemyStates.Move
				speed = global.EnemySpeeds.Still
				SpeedModifier = [1,1]
				if abs(CurrentPath[CoordinateIndex][0]) > 4
				{
					SpeedModifier[0] = abs(CurrentPath[CoordinateIndex][0]) / 4
				}
				if abs(CurrentPath[CoordinateIndex][1]) > 4
				{
					SpeedModifier[1] = abs(CurrentPath[CoordinateIndex][1]) / 4
				}
				if CoordinateIndex <= array_length(CurrentPath)-1
				{
					if CurrentPath[CoordinateIndex][0] != 0 or CurrentPath[CoordinateIndex][1] !=0
					{
						if x < CurrentCoordinates[0]
						{
							if x + SpeedModifier[0] > CurrentCoordinates[0]
							{
								x = CurrentCoordinates[0]
							}
							else
							{
								x += SpeedModifier[0] * global.EnemySpeeds.Slow
							}
							
						}
						else if x > CurrentCoordinates[0]
						{
							if x - SpeedModifier[0] < CurrentCoordinates[0]
							{
								x = CurrentCoordinates[0]
							}
							else
							{
								x -= SpeedModifier[0] * global.EnemySpeeds.Slow
							}
						}
						
						if y < CurrentCoordinates[1]
						{
							if y + SpeedModifier[1] > CurrentCoordinates[1]
							{
								y = CurrentCoordinates[1]
							}
							else
							{
								y += SpeedModifier[1] * global.EnemySpeeds.Slow
							}
						}
						else if y > CurrentCoordinates[1]
						{
							if y - SpeedModifier[1] < CurrentCoordinates[1]
							{
								y = CurrentCoordinates[1]
							}
							else
							{
								y -= SpeedModifier[1] * global.EnemySpeeds.Slow
							}
						}
					}
					//Increase Current Frame
					if EnemyState = EnemyStates.Move
					{
						FrameIndex +=1
					}
				}
			}
		}
	}
}