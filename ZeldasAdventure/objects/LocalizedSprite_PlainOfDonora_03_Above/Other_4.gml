if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Maps/PlainOfDonora/PlainOfDonora_03_Above.png")
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		instance_destroy()
	}
		
}