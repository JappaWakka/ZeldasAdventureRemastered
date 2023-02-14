
function Item_Add(ItemID,InventoryIndex)
{
	//InventoryIndex : 0 = Treasure, 1 = Spells, 2 = Celestial Signs
		
	if Item_FindIndex(ItemID,InventoryIndex) <> -1
	{
		return false
	}
		
	//Add the item to the specified Inventory list
	ds_list_add(InventoryList(InventoryIndex),ItemID)
	//Then sort the Inventory from lowest to highest item number
	ds_list_sort(InventoryList(InventoryIndex),true) 
	return true;
}

function Item_FindIndex(ItemID,InventoryIndex)
{
	return ds_list_find_index(InventoryList(InventoryIndex), ItemID)
}

function Item_FindValue(ItemIndex,InventoryIndex)
{
	var ItemValue = ds_list_find_value(InventoryList(InventoryIndex), ItemIndex)
	if is_numeric(ItemValue) = true
	{
		return ItemValue
	}
	else
	{
		return -1
	}
}

function Item_Remove(ItemID,InventoryIndex)
{
	var ItemIndex = Item_FindIndex(ItemID,InventoryIndex)
	if ItemIndex == -1
	{
		return false
	}
	else
	{
		ds_list_delete(InventoryList(InventoryIndex),ItemIndex)
		return true
	}
}