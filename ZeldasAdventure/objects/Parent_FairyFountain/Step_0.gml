if IsPlayerOnSameTile() = true
{
	if timeline_position > timeline_max_moment(timeline_index)
	{
		Trigger_End = true
	    timeline_running = false
		timeline_position = 0
	}
	else
	{
		if Trigger_Start = true and Trigger_End = false and timeline_running = false
		{
			audio_play_sound_relative_toplayer(SFX_FillHearts,999,false)
			FillHP(false)
			timeline_running = true
		}
	}
}
else
{
	Trigger_Start = false
	Trigger_End = false
	timeline_position = 0
	timeline_running = false
}