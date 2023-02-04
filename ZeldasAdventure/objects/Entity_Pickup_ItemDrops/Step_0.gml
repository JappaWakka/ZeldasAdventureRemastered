/// @description Continuous events
// Destroy if outside tile
if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth or
y + 24 >= global.CurrentTile.y * tileHeight + tileHeight or
x - 24 <= global.CurrentTile.x * tileWidth or
y - 24 <= global.CurrentTile.y * tileHeight
{
	if EnemyDropType == "Heart"
	{
		path_end()
	}
	else
	{
		instance_destroy();
	}
}