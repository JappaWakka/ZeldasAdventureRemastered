SelectedIndex = [global.CurrentTreasure, global.CurrentSpell]
InventoryIndex = 0
RemovedItems = INVENTORY_SLOTS_TREASURE_USED
if SelectedIndex[0] = -1
{
	SelectedIndex[0] = 0
}
if SelectedIndex[1] = -1
{
	SelectedIndex[1] = 0
}
ScrollOffsetX_Treasure = clamp(SelectedIndex[0],0, INVENTORY_SLOTS_TREASURE_USED - 7)

Alpha = 0
OpeningClosing = false
