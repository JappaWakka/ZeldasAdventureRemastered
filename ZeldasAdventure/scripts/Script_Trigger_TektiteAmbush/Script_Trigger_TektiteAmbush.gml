// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_TektiteAmbush()
{
	if Register_Registered("TektiteAmbush") = false
	{
		Register_Add("TektiteAmbush",true)
		instance_create_layer(2912,7524,"Enemies",Entity_Enemy_Tektite_Weaker)
		instance_create_layer(2972,7564,"Enemies",Entity_Enemy_Tektite_Weaker)
		instance_create_layer(2916,7612,"Enemies",Entity_Enemy_Tektite_Weaker)
		instance_create_layer(2800,7572,"Enemies",Entity_Enemy_Tektite_Weaker)
		instance_create_layer(2800,7568,"Enemies",Entity_Enemy_Tektite_Weaker)
	}
}