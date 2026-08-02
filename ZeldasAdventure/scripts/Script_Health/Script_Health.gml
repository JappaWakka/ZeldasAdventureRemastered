function DecreaseHP(Amount = 10)
{
	global.CurrentHealth -= Amount
	if global.CurrentHealth < 0
	{
		global.CurrentHealth = 0
	}
}

function IncreaseHP(Amount = 10)
{
	global.CurrentHealth += Amount
	if global.CurrentHealth > global.MaxHealth
	{
		global.CurrentHealth = global.MaxHealth
	}
}

function DecreaseMaxHealth()
{
	if global.MaxHealth > 20
	{
		global.MaxHealth -= 20
	}
	if global.CurrentHealth > global.MaxHealth
	{
		global.CurrentHealth = global.MaxHealth
	}
}

function IncreaseMaxHealth()
{
	if global.CurrentHealth == global.MaxHealth
	{
		global.CurrentHealth += 20
	}
	global.MaxHealth += 20
}

function FillHP(PlayHeartFillSound = false, InstantFill = false)
{
	if global.CurrentHealth < global.MaxHealth
	{
		if InstantFill = false
		{
			Obj_GameManager.DoFillHearts = true
			Obj_GameManager.DoPlayHeartFillSound = PlayHeartFillSound
		}
		else
		{
			global.CurrentHealth = global.MaxHealth
		}
	}
}

function PlayOriginalHeartFillSound()
{
	if room = Room_Overworld and global.RemasteredMode = false
	{
		if Obj_GameManager.DoPlayHeartFillSound = true
		{
			if global.CurrentHealth < global.MaxHealth
			{
				if audio_is_playing(SFX_Use_Error) = false
				{
					if global.CameraIsPanning = false and IsMenuVisible() = false
					{
						audio_play_sound_relative_toplayer(SFX_Use_Error,999,false)
					}
				}
			}
		}
	}
}