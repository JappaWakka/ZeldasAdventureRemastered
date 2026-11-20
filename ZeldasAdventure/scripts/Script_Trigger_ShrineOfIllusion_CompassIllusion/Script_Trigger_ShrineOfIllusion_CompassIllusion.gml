// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_ShrineOfIllusion_CompassIllusion()
{
	if instance_exists(Entity_Pickup_Compass_Illusion) = false and Item_FindIndex(Treasures.Compass_Illusion,0) = -1
	{
		instance_create_layer(7907,5679,"Items_AboveForeground",Entity_Pickup_Compass_Illusion)
	}
}