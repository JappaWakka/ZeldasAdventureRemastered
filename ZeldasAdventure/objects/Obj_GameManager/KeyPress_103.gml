/// @description Add ALL items

if global.DebugMode = true
{
	for (var i = 0; i < global.InventorySlots_Max[0]; i+=1)
	{
		Item_Add(i,0)
	}
	for (var i = 0; i < global.InventorySlots_Max[1]; i+=1)
	{
		Item_Add(i,1)
	}
}