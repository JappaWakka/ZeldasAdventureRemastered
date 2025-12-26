/// @description Set Player Speed to 2 (DebugMode)
if global.DebugMode = true and room = Room_Overworld
{
	if Entity_Parent_Player.DebugSpeedMultiplier != 2
	{
		Entity_Parent_Player.DebugSpeedMultiplier = 2
	}
	else
	{
		Entity_Parent_Player.DebugSpeedMultiplier = 1
	}
}