function GetCurrentDepth()
{
	var TileY = global.CurrentTile.y * tileHeight
	return 101700 - (y - TileY)
}