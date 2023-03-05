if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
	y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight &&
	global.CameraIsPanning = false
	{
		visible = true
	}
	else
	{
		visible = false
	}