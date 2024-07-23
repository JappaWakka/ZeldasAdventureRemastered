// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_UnderworldMapEarthTreasure()
{
	if instance_exists(Entity_Pickup_UnderworldMap_Earth) = false and Item_FindIndex(Treasures.UnderworldMap_Earth,0) = -1
	{
		instance_create_layer(3664,8548,"Items_AboveForeground",Entity_Pickup_UnderworldMap_Earth)
	}
}