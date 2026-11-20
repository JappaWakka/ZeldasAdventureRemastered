// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_ShrineOfIllusion_UnderworldMapIllusionAndVireDoor()
{
	if instance_exists(Entity_Pickup_UnderworldMap_Illusion) = false and Item_FindIndex(Treasures.UnderworldMap_Illusion,0) = -1
	{
		instance_create_layer(7098,5902,"Items_AboveForeground",Entity_Pickup_UnderworldMap_Illusion)
	}
	if Register_Registered(Registers.Door_Vire) = false
	{
		Register_Add(Registers.Door_Vire,true)
	}
}