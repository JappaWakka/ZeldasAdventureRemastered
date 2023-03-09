//Get the base defense and add 2 to that times the number of celestial signs
function GetDefense(){
	return global.Defense + 2 * ds_list_size(InventoryList(2));
}