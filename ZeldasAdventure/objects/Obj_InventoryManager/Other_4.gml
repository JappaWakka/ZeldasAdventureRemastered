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