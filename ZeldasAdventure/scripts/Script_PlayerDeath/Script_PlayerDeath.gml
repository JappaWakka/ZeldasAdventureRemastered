// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDeath_Start()
{
	if global.DebugMode = false && global.CurrentHealth = 0 && global.PlayerIsDead = false
	{
		sprite_index = Zelda_Death
		image_speed = 1
		Audio_StopMusic()
		audio_play_sound(SFX_Zelda_Death,1000,false)
		global.FadeProgress = 0;
		global.FadeSpeed = 1
		DamageDelay = 8 * FrameRate
		global.PlayerIsDead = true
		global.HasResetEnemies = false
		
		return true
	}
	else
	{
		return false
	}
}

function PlayerDeath_Animation()
{
	if global.FadeProgress = 0
	{
		sprite_index = Zelda_Death;
		image_speed = 1;
	}
		
	if global.FadeProgress = 1
	{
		global.CurrentHealth = global.MaxHealth
		sprite_index = Zelda_Move_South;
		Facing = global.Directions.South;
		IsAttacking = false;
		DamageDelay = 0;
		image_speed = 0;
		timeline_index = -1;
		image_alpha = 1;
		if global.HasResetEnemies = false
		{
			global.HasResetEnemies = true
			room_goto(Room_Overworld)
			Register_ClearTempRegister()
		}
	}
	if global.FadeProgress = 2
	{
		if audio_is_playing(SFX_Zelda_Death) = false
		{
			global.SwitchTracks = true
			global.PlayerIsDead = false
		}
	}
}