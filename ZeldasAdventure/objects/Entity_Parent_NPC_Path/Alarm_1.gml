/// @description Do path actions
if IsPlayerOnSameTile_EnemyOrNPC() = true && global.CameraIsFading = false && NPCState <> NPCStates.StopPath
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
			var randomDelay = round(random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4]))
			
			Animating = false
			CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
			CanContinue = false
			NPCState = NPCStates.Wait
			FrameIndex += 4
			if randomDelay = 0
			{
				alarm_set(1,4)
			}
			else
			{
				alarm_set(1, randomDelay);
			}
			break;
		
		case "move":
			Animating = true
			if array_length(CurrentPath[CoordinateIndex]) > 3
			{
				visible = CurrentPath[CoordinateIndex][3]
			}
			else
			{
				visible = true
			}
			CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
			NPCState = NPCStates.Move
			
			CanContinue = true
			alarm_set(1,4)
			break;
			
		case "setsprite":
			Animating = false
			sprite_index = CurrentPath[CoordinateIndex][3]
			if array_length(CurrentPath[CoordinateIndex]) > 4
			{
				visible = CurrentPath[CoordinateIndex][4]
			}
			else
			{
				visible = true
			}
			NPCState = NPCStates.Idle
			
			CanContinue = true
			alarm_set(1,4)
			break;
				
		case "setvisible":
			Animating = false
			visible = false
			NPCState = NPCStates.Idle
			
			CanContinue = true
			alarm_set(1,4)
			break;
				
		case "stoppath":
			Animating = false
			NPCState = NPCStates.StopPath
			
			CanContinue = true
			alarm_set(1,4)
			break;
	}
}
else
{
	alarm_set(1, 1);
}



