/// @description (Re)Start Path & Set Coordinates
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	if ReturnPointPosition[0] != -1 or ReturnPointPosition[1] != -1 or EnemyState = EnemyStates.Damaged
	{
		alarm_set(0,1)
	}
	else
	{
		var CoordinateIndex = floor(FrameIndex / 4)
		if CanContinue = false
		{
			image_speed = 1
			CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
			EnemyState = EnemyStates.Move
			CanContinue = true
			alarm_set(0,4)
		}
		else
		{
			if CoordinateIndex > array_length(CurrentPath)-1
			{
				image_speed = 0
				FrameIndex = 0
				CoordinateIndex = floor(FrameIndex / 4)
				CanContinue = false
				EnemyState = EnemyStates.Idle
				x = OriginX
				y = OriginY
				var randomDelay = random_range(ContinueDelayMin,ContinueDelayMax)
				if randomDelay = 0
				{
					image_speed = 1
					CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
					EnemyState = EnemyStates.Move
					CanContinue = true
					alarm_set(0,4)
				}
				else
				{
					alarm_set(0, randomDelay);
				}
			}
			else
			{
				image_speed = 1
				CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
				EnemyState = EnemyStates.Move
				alarm_set(0,4)
			}
			
		}
	}
}
else
{
	alarm_set(0, 1);
}



