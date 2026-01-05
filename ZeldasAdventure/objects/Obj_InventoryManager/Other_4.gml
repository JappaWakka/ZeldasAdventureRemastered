//Auto-equip Wand if nothing is equipped
if global.RemasteredMode = true
{
	if Item_FindValue(global.CurrentSpell,1) = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentSpell = Item_FindIndex(Spells.Wand,1);
	}
}
else
{
	if global.CurrentItem[1] = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentItem = [1,Item_FindIndex(Spells.Wand,1)];
	}
}

if LocalizedSprite_Spells = -1
{
	LocalizedSprite_Spells = GetLocalizedLocalizedSprite("Sprites/Sprite_Inventory_Spells.png",24)
	if LocalizedSprite_Spells = -1
	{
		LocalizedSprite_Spells = Sprite_Inventory_Spells
	}		
}

if LocalizedSprite_Treasure = -1
{
	LocalizedSprite_Treasure = GetLocalizedLocalizedSprite("Sprites/Sprite_Inventory_Treasure.png",51)
	if LocalizedSprite_Treasure = -1
	{
		LocalizedSprite_Treasure = Sprite_Inventory_Treasure
	}		
}