///@description Default NPC Begin Step Event
if IsPlayerOnSameTile_EnemyOrNPC() = true
{
	visible = true
	if Animating = true
	{
		image_speed = d(ImageSpeed)
	}
	else
	{
		image_index = 0
		image_speed = 0
	}
	
}
else
{
	if IsMenuVisible() = false && global.CameraIsFading = false
	{
		CanContinue = false;
		FrameIndex = 0;
		if NPCState = NPCStates.StopPath
		{
			NPCState = NPCStates.Idle
		}
		x = OriginX;
		y = OriginY;
		image_index = 0;
		direction = 90;
	}
	if EnableAnimationAlarm = true and Animating = false
	{
		Animating = true
	}
	image_speed = 0
	visible = false
}
