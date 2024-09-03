// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_EarthSardakBarrier()
{
	if Register_Registered("SardaksDefeated") = false
	{
		Register_Add("SardaksDefeated")
	}
}