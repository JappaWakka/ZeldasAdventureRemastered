/// @description Do Actions
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	if ReturnPointPosition[0] != -1 or ReturnPointPosition[1] != -1 or EnemyState = EnemyStates.Damaged
	{
		alarm_set(0,1)
	}
	else
	{
		var CoordinateIndex = floor(FrameIndex / 4)
		if CoordinateIndex > array_length(CurrentPath) - 1
		{
			FrameIndex = 0
			x = OriginX
			y = OriginY
			CoordinateIndex = floor(FrameIndex / 4)
		}
		
		if CurrentPath[CoordinateIndex][2] = "wait"
		{
			var randomDelay = random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4])
			
			image_speed = 0
			CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
			CanContinue = false
			EnemyState = EnemyStates.Idle
			FrameIndex += 4
			if randomDelay = 0
			{
				alarm_set(0,4)
			}
			else
			{
				alarm_set(0, randomDelay);
			}
		}
		else if CurrentPath[CoordinateIndex][2] = "move"
		{
			image_speed = 1
			CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
			EnemyState = EnemyStates.Move
			CanContinue = true
			alarm_set(0,4)
		}
	}
}
else
{
	alarm_set(0, 1);
}



