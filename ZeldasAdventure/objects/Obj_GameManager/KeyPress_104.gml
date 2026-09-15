/// @description Set Player Speed to 2 (DebugMode)
if global.DebugMode = true and room = Room_Overworld
{
	if global.DebugSpeedMultiplier != 2
	{
		global.DebugSpeedMultiplier = 2
	}
	else
	{
		global.DebugSpeedMultiplier = 1
	}
	Entity_Parent_Player.DebugSpeedMultiplier = global.DebugSpeedMultiplier
}