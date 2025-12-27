if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Maps/ForestOfOgham/ForestOfOgham_03_Below.png")
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		instance_destroy()
	}
		
}