/// @description Delete Created Sprites
if LocalizedSprite_Spells <> -1
{
	sprite_delete(LocalizedSprite_Spells)
	LocalizedSprite_Spells = -1
}
/// @description Delete Created Sprite
if LocalizedSprite_Treasure <> -1
{
	sprite_delete(LocalizedSprite_Treasure)
	LocalizedSprite_Treasure = -1
}