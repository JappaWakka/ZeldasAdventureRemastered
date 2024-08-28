/// @description Set Player Speed to 2
if room = Room_Overworld
{
	if Entity_Parent_Player.SpeedMultiplier != 2
	{
		Entity_Parent_Player.SpeedMultiplier = 2
	}
	else
	{
		Entity_Parent_Player.SpeedMultiplier = 1
	}
}