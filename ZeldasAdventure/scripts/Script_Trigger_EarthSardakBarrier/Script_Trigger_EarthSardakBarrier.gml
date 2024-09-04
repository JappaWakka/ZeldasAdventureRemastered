// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_EarthSardakBarrier(Color)
{
	if Color = "Red" and Register_Registered("RedSardakDefeated") = false
	{
		Register_Add("RedSardakDefeated")
	}
	if Color = "Blue" and Register_Registered("BlueSardakDefeated") = false
	{
		Register_Add("BlueSardakDefeated")
	}
	if Color = "Yellow" and Register_Registered("YellowSardakDefeated") = false
	{
		Register_Add("YellowSardakDefeated")
	}
	
}