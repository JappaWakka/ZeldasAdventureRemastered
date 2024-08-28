/// @description (Re)Start Path & Set Coordinates
if IsPlayerOnSameTile_Enemy() = true && global.CameraIsFading = false
{
	if ReturnPointPosition[0] != -1 or ReturnPointPosition[1] != -1
	{
		alarm_set(0,1)
	}
	else
	{
		var CoordinateIndex = floor(FrameIndex / 4)
		if HasStarted = false
		{
			image_speed = 1
			CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
			EnemyState = EnemyStates.Move
			HasStarted = true
			alarm_set(0,4)
		}
		else
		{
			if CurrentPath[CoordinateIndex][0] = "end" or CurrentPath[CoordinateIndex][1] = "end"
			{
				image_speed = 0
				FrameIndex = 0
				HasStarted = false
				EnemyState = EnemyStates.Idle
				alarm_set(0, random_range(ContinueDelayMin,ContinueDelayMax));
			}
			else
			{
				image_speed = 1
				CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
				alarm_set(0,4)
			}
			
		}
	}
}
else
{
	alarm_set(0, 1);
}



