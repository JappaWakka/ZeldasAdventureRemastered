if LocalizedSprite = -1
{
	LocalizedSprite = GetLocalizedLocalizedSprite("Sprites/Sprite_Pickup_SpellOfCalm.png",1,16,16)
	if LocalizedSprite <> -1
	{
		sprite_index = LocalizedSprite
	}
	else
	{
		sprite_index = Sprite_Pickup_Calm
	}
		
}