if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Sprites/Sprite_Pickup_NoiseSpell.png",1,16,16)
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		sprite_index = Sprite_Pickup_Calm
	}
		
}

PathHasEnded = false
path_start(Path_Pickup_Spawn, 2.8, path_action_stop, false)