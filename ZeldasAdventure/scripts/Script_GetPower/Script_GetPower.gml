//Get the base wand damage and add 2 to that times the number of celestial signs
function GetPower()
{
	return global.Power + 2 * ds_list_size(InventoryList(2));
}