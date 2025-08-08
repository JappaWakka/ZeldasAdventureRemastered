Scrolled = [0,0] // Direction, InventoryIndex

if global.RemasteredMode == true
{
	SelectedIndex = [global.CurrentTreasure, global.CurrentSpell]
	InventoryIndex = 0
}
else
{
	if global.CurrentItem[0] == 0 //Treasure
	{
		SelectedIndex = [global.CurrentItem[1],-1]
		InventoryIndex = 0
	}
	else if global.CurrentItem[0] == 1 //Spell
	{
		SelectedIndex = [-1, global.CurrentItem[1]]
		InventoryIndex = 1
	}
	else
	{
		SelectedIndex = [-1,-1]
		InventoryIndex = 0
	}
}

if SelectedIndex[0] == -1
{
	SelectedIndex[0] = 0
}
if SelectedIndex[1] == -1
{
	SelectedIndex[1] = 0
}

ScrollOffsetX_Treasure = clamp(SelectedIndex[0],0, global.InventorySlots_Max[0] - 6)
ScrollOffsetX_Spells = clamp(SelectedIndex[1],0,global.InventorySlots_Max[1] - 6)

if ScrollOffsetX_Treasure + 5 > ds_list_size(InventoryList(0))
{
	ScrollOffsetX_Treasure = clamp(ScrollOffsetX_Treasure,0,clamp(ds_list_size(InventoryList(0)) - 5,0,global.InventorySlots_Max[0] - 6))
}
if ScrollOffsetX_Spells + 5 > ds_list_size(InventoryList(1))
{
	ScrollOffsetX_Spells = clamp(ScrollOffsetX_Spells,0,clamp(ds_list_size(InventoryList(1)) - 5,0,global.InventorySlots_Max[1] - 6))
}
	
Alpha = 0
OpeningClosing = false