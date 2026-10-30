if IsPlayerOnSameTile() = true
{
	if image_speed = 0
	{
		sprite_index = Shrine_Illusion_08_Platforms_Initial
	}
	
	if sprite_index = Shrine_Illusion_08_Platforms_Initial
	{
		DropToSlide_08_PlatformHole.CanTrigger = false
		if HasSetAlarm = false
		{
			alarm_set(0,8)
			HasSetAlarm = true
		}
	}
	else
	{
		if place_meeting(x,y,Entity_Player) = true
		{
			DropToSlide_08_PlatformHole.CanTrigger = false
		}
		else
		{
			DropToSlide_08_PlatformHole.CanTrigger = true
		}
	}
}
else
{
	image_speed = 0
	HasSetAlarm = false
}
