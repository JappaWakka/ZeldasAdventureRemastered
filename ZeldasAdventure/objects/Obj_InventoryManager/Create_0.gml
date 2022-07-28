SelectedIndex = [Find_Item(global.CurrentTreasure,0), Find_Item(global.CurrentSpell,1)]
InventoryIndex = 0

if SelectedIndex[0] = -1
{
	SelectedIndex[0] = 0
}
if SelectedIndex[1] = -1
{
	SelectedIndex[1] = 0
}
ScrollOffsetX_Treasure = clamp(SelectedIndex[0],0, global.InventorySlots_Max[0] - 7)
ScrollOffsetX_Spells = clamp(SelectedIndex[1],0,global.InventorySlots_Max[1] - 7)

Alpha = 0
OpeningClosing = false
