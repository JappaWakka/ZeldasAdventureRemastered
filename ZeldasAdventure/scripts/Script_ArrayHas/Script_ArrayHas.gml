function ArrayHas(array_to_search, value_to_find)
{
	var searchArray = array_to_search;
	var findValue = value_to_find;
	var loop = 0;
	repeat (array_length(searchArray)) if (searchArray[loop++] == findValue) return true
	return false
}

function Add_Item(Item,InventoryIndex)
{
	array_resize(InventoryArray(InventoryIndex), array_length(InventoryArray(InventoryIndex)) + 1);
	InventoryArray(InventoryIndex)[array_length(InventoryArray(InventoryIndex))] = ItemIndex(InventoryIndex)[Item];
	array_sort(InventoryArray(InventoryIndex),true)
	return true;
}

function Find_Index(Item,InventoryIndex)
{
	for(var i = 0; i < array_length(InventoryArray(InventoryIndex)); i++)
	{
	  if(InventoryArray(InventoryIndex)[i] == Item){
	    return i;
	  }
	}
}

function Remove_Item(Item,InventoryIndex)
{
	
	array_delete(InventoryArray(InventoryIndex),Find_Index(Item,InventoryIndex),1)
}
