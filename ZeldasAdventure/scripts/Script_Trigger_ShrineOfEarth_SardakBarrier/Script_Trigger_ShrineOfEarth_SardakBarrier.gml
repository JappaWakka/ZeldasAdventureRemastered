// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script_Trigger_ShrineOfEarth_SardakBarrier(Color)
{
	if Color = "Red" and Register_Registered(Registers.RedSardak_Defeated) = false
	{
		Register_Add(Registers.RedSardak_Defeated)
	}
	if Color = "Blue" and Register_Registered(Registers.BlueSardak_Defeated) = false
	{
		Register_Add(Registers.BlueSardak_Defeated)
	}
	if Color = "Yellow" and Register_Registered(Registers.YellowSardak_Defeated) = false
	{
		Register_Add(Registers.YellowSardak_Defeated)
	}
	
}