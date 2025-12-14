if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Maps\ForestOfFindo\ForestOfFindo_02_Below.png")
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		instance_destroy()
	}
	
}