/// @description Do Actions
if IsPlayerOnSameTile_EnemyOrNPC() = true && global.CameraIsFading = false
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
		
		switch CurrentPath[CoordinateIndex][2]
		{
			case "wait":
				var randomDelay = 0
				
				if array_length(CurrentPath[CoordinateIndex]) > 4
				{
					randomDelay = round(random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4]))
				}
				else
				{
					randomDelay = CurrentPath[CoordinateIndex][3]
				}
				
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
				break;
				
			case "move":
				if array_length(CurrentPath[CoordinateIndex]) > 3
				{
					image_speed = CurrentPath[CoordinateIndex][3]
				}
				else
				{
					image_speed = 1
				}
				if array_length(CurrentPath[CoordinateIndex]) > 4
				{
					visible = CurrentPath[CoordinateIndex][4]
				}
				CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
				EnemyState = EnemyStates.Move
				CanContinue = true
				alarm_set(0,4)
				break;
				
			case "setsprite":
				sprite_index = CurrentPath[CoordinateIndex][3]
				if array_length(CurrentPath[CoordinateIndex]) > 4
				{
					image_speed = CurrentPath[CoordinateIndex][4]
				}
				else
				{
					image_speed = 1
				}
				if array_length(CurrentPath[CoordinateIndex]) > 5
				{
					visible = CurrentPath[CoordinateIndex][5]
				}
				CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
				CanContinue = true
				EnemyState = EnemyStates.Move
				alarm_set(0,4)
				break;
			
			case "setvisible":
				visible = CurrentPath[CoordinateIndex][3]
				EnemyState = EnemyStates.Idle
				FrameIndex += 4
				CanContinue = false
				alarm_set(0,4)
				break;
				
			case "nextframe":
				var NextDelay = 4
				
				if array_length(CurrentPath[CoordinateIndex]) > 3
				{
					NextDelay = CurrentPath[CoordinateIndex][3] * 4
				}
				if NextDelay = 0
				{
					NextDelay = 1
				}
				
				image_index +=1
				if array_length(CurrentPath[CoordinateIndex]) > 4
				{
					visible = CurrentPath[CoordinateIndex][4]
				}
				else
				{
					visible = 1
				}
				CanContinue = false
				EnemyState = EnemyStates.Idle
				FrameIndex += 4
				
				alarm_set(0, NextDelay);
				
				break;
			
			case "previousframe":
				var PreviousDelay = 4
				
				if array_length(CurrentPath[CoordinateIndex]) > 3
				{
					PreviousDelay = CurrentPath[CoordinateIndex][3] * 4
				}
				if PreviousDelay = 0
				{
					PreviousDelay = 1
				}
				image_index -=1
				if array_length(CurrentPath[CoordinateIndex]) > 4
				{
					visible = CurrentPath[CoordinateIndex][4]
				}
				else
				{
					visible = 1
				}
				CanContinue = false
				EnemyState = EnemyStates.Idle
				FrameIndex += 4
				
				alarm_set(0, PreviousDelay);
				
				break;
			
			case "executescript":
				script_execute(CurrentPath[CoordinateIndex][3])				
				if array_length(CurrentPath[CoordinateIndex]) > 4
				{
					image_speed = CurrentPath[CoordinateIndex][4]
				}
				else
				{
					image_speed = 1
				}
				if array_length(CurrentPath[CoordinateIndex]) > 5
				{
					visible = CurrentPath[CoordinateIndex][5]
				}
				CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
				CanContinue = true
				EnemyState = EnemyStates.Move
				alarm_set(0,4)
				break;
		}
	}
}
else
{
	alarm_set(0, 1);
}



