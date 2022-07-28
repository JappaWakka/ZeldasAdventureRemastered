
function Add_Item(Item,InventoryIndex)
{
	//InventoryIndex : 0 = Treasure, 1 = Spells, 2 = Celestial Signs
	
	if array_length //if the Inventory is full, don't add the item
	(
		InventoryArray(InventoryIndex)
		
	) + 1
	>
	global.InventorySlots_Max[InventoryIndex]
	{
		return false
	}
	
	if Find_Item(Item,InventoryIndex) <> -1
	{
		return false
	}
	
	
	//Make the last entry of the specified inventory array the Item Number
	InventoryArray(InventoryIndex) 
	[
		array_length
		(
			InventoryArray(InventoryIndex)
		)
	] = ItemIndex(InventoryIndex)[Item];
	//Then sort the Inventory from lowest to highest item number
	array_sort(InventoryArray(InventoryIndex),true) 
	return true;
}

function Find_Item(Item,InventoryIndex)
{
	for(var i = 0; i < array_length(InventoryArray(InventoryIndex)); i++)
	{
	  if(InventoryArray(InventoryIndex)[i] == Item){
	    return i;
	  }
	}
	return -1;
}

function Remove_Item(Item,InventoryIndex)
{
	var ItemIndex = Find_Item(Item,InventoryIndex)
	if ItemIndex == -1
	{
		return false
	}
	else
	{
		array_delete(InventoryArray(InventoryIndex),ItemIndex,1)
		return true
	}
}