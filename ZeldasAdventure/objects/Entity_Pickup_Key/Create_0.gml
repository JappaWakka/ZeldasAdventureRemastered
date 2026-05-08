PathHasEnded = false
path_start(Path_Pickup_Spawn, 2.8, path_action_stop, false)

if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
y >= 10 * tileHeight && y < 10 * tileHeight + tileHeight
{
	if Register_Registered("ShrineOfIllusion_KeyMolluska") = true
	{
		instance_destroy()
	}
}