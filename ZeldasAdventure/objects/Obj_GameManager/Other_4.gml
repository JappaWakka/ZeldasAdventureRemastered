/// Fade In
if room = Room_Overworld or room = Room_MainMenu
{
	global.FadeProgress = 1
	global.FadeAlpha = 255
}

/// Deactivate all instancess on specific layers
if room = Room_Overworld
{
	instance_deactivate_layer("Items_AboveForeground")
	instance_deactivate_layer("Items_BelowForeground")
	instance_deactivate_layer("NPCs_AboveForeground")
	instance_deactivate_layer("NPCs_AbovePlayer")
	instance_deactivate_layer("NPCs_BelowPlayer")
	instance_deactivate_layer("Enemies_BelowForeground")
	instance_deactivate_layer("Enemies_AboveForeground");
	instance_deactivate_layer("TileDialogueTriggers")
}