// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_ShrineOfIllusion_BlackOrb()
{
	if instance_exists(Entity_Pickup_BlackOrb) = false and Item_FindIndex(Treasures.BlackOrb,0) = -1
	{
		instance_create_layer(7919,5159,"Items_AboveForeground",Entity_Pickup_BlackOrb)
	}
}