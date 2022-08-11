if global.DebugMode = true
{
	for (var i = 0; i < global.InventorySlots_Max[0]; i+=1)
	{
		Add_Item(ItemIndex(0)[i],0)
	}
	for (var i = 0; i < global.InventorySlots_Max[1]; i+=1)
	{
		Add_Item(ItemIndex(1)[i],1)
	}
}

//Auto-equip Wand if nothing is equipped
if global.RemasteredMode = true
{
	if global.CurrentSpell = -1 && Find_Item(Spells.Wand,1) <> -1
	{
		global.CurrentSpell = Spells.Wand;
	}
}
else
{
	if global.CurrentItem[1] = -1 && Find_Item(Spells.Wand,1) <> -1
	{
		global.CurrentItem = [1,Spells.Wand];
	}
}
