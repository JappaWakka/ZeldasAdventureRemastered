// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_ShrineOfIllusion_Knife()
{
	if instance_exists(Entity_Pickup_Knife) = false and Item_FindIndex(Treasures.Knife,0) = -1
	{
		instance_create_layer(8640,5159,"Items_AboveForeground",Entity_Pickup_Knife)
	}
}