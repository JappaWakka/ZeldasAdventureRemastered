// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_PyrosSpell()
{
	if instance_exists(Entity_Pickup_Pyros) = false and Item_FindIndex(Spells.Pyros,1) = -1
	{
		instance_create_layer(3684,3456,"Items_AboveForeground",Entity_Pickup_Pyros)
	}
}