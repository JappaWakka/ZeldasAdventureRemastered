///@description Path NPC Step Event (Movement)
if IsPlayerOnSameTile_EnemyOrNPC() = true && global.CameraIsFading = false
{
	if CanContinue = true
	{
		var CoordinateIndex = floor(FrameIndex / 4)
		if CoordinateIndex > array_length(CurrentPath) - 1
		{
			FrameIndex = 0
			x = OriginX
			y = OriginY
			CoordinateIndex = floor(FrameIndex / 4)
		}
		speed = 0
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
						x += SpeedModifier[0]
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
						x -= SpeedModifier[0]
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
						y += SpeedModifier[1]
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
						y -= SpeedModifier[1]
					}
				}
			}
			//Increase Current Frame
			if NPCState != NPCStates.Wait and NPCState != NPCStates.StopPath
			{
				FrameIndex +=1
			}
		}
	}
}
