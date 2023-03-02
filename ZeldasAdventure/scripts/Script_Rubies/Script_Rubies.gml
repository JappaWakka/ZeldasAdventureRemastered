function AddRubies(Amount)
{
	if audio_is_playing(SFX_Pickup_Ruby) = false
	{
		audio_play_sound_relative_toplayer(SFX_Pickup_Ruby,999,false)
	}
	global.DesiredRubies = clamp(global.CurrentRubies + Amount, 0, 999)
	
	if global.CurrentRubies < global.DesiredRubies
	{
		global.CurrentRubies = clamp(global.CurrentRubies + 2, 0, global.DesiredRubies)
	}
}
function RemoveRubies(Amount)
{
	if audio_is_playing(SFX_Pickup_Ruby) = false
	{
		audio_play_sound_relative_toplayer(SFX_Pickup_Ruby,999,false)
	}
	global.DesiredRubies = clamp(global.CurrentRubies - Amount, 0, 999)
	
	if global.CurrentRubies > global.DesiredRubies
	{
		global.CurrentRubies = clamp(global.CurrentRubies - 2, global.DesiredRubies, 999)
	}
}

//AlarmFunctions
function ChangeRubyAmount()
{
	if global.CurrentRubies != global.DesiredRubies
	{
		if global.CurrentRubies < global.DesiredRubies //Add Ruby Amount
		{
			global.CurrentRubies = clamp(global.CurrentRubies + 2, 0, global.DesiredRubies)
		}
		
		if global.CurrentRubies > global.DesiredRubies //Remove Ruby Amount
		{
			global.CurrentRubies = clamp(global.CurrentRubies - 2, global.DesiredRubies, 999)
		}
	}
}

function PlayRubySound()
{
	if global.CurrentRubies < global.DesiredRubies
	{
		if audio_is_playing(SFX_Pickup_Ruby) = false
		{
			audio_play_sound_relative_toplayer(SFX_Pickup_Ruby,999,false)
		}
	}
}