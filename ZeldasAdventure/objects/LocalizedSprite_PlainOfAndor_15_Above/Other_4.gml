if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Maps\PlainOfAndor\PlainOfAndor_15_Above.png")
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		instance_destroy()
	}
		
}