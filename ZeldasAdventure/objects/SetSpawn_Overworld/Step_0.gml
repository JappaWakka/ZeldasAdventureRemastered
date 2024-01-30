if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	if global.HasSpawned = true
	{
		global.PlayerSpawn = "Spawn_Overworld"
	}
}