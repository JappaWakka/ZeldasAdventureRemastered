///@description Default NPC Begin Step Event
if IsPlayerOnSameTile_EnemyOrNPC() = true
{
	if NPCState != NPCStates.StopPath
	{
		visible = true
	}
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
	if IsMenuVisible() = false
	{
		CanContinue = false;
		FrameIndex = 0;
		if NPCState = NPCStates.StopPath
		{
			NPCState = NPCStates.Idle
		}
		if StartSprite != noone
		{
			sprite_index = StartSprite
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
