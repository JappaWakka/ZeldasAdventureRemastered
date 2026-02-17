if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Maps/PlainOfDonora/ForestOfTorian_18_Below.png")
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		instance_destroy()
	}
		
		
}