// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_BoomerangSpell()
{
	if instance_exists(Entity_Pickup_Boomerang) = false
	{
		instance_create_layer(1216,5680,"Items",Entity_Pickup_Boomerang)
	}							
}