// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_CompassEarthTreasure()
{
	if instance_exists(Entity_Pickup_Compass_Earth) = false and Item_FindIndex(Treasures.Compass_Earth,0) = -1
	{
		instance_create_layer(3624,8800,"Items_AboveForeground",Entity_Pickup_Compass_Earth)
	}
}