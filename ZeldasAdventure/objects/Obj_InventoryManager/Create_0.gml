SelectedIndex = [Find_Index(global.CurrentTreasure,0), Find_Index(global.CurrentSpell,1)]
InventoryIndex = 0
RemainingItems = [array_create(INVENTORY_SLOTS_TREASURE,-1),array_create(INVENTORY_SLOTS_SPELLS,-1)]
for (var i = 0; i < INVENTORY_SLOTS_TREASURE;i += 1)
{
	RemainingItems[0][i] = i
}
for (var i = 0; i < INVENTORY_SLOTS_SPELLS;i += 1)
{
	RemainingItems[1][i] = i
}

if SelectedIndex[0] = -1
{
	SelectedIndex[0] = 0
}
if SelectedIndex[1] = -1
{
	SelectedIndex[1] = 0
}
ScrollOffsetX_Treasure = clamp(SelectedIndex[0],0, INVENTORY_SLOTS_TREASURE - 7)
ScrollOffsetX_Spells = clamp(SelectedIndex[1],0, INVENTORY_SLOTS_SPELLS - 7)

Alpha = 0
OpeningClosing = false
