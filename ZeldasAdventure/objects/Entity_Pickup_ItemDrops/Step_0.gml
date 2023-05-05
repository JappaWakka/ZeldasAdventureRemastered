/// @description Continuous events
// Destroy if outside tile
if EnemyDropType = "Heart"
{
	if StartPositionX + 16 >= global.CurrentTile.x * tileWidth + tileWidth or
	StartPositionY + 16 >= global.CurrentTile.y * tileHeight + tileHeight or
	StartPositionX - 16 <= global.CurrentTile.x * tileWidth or
	StartPositionY - 16 <= global.CurrentTile.y * tileHeight
	{
		instance_destroy();
	}
}
else
{
	if x + 16 >= global.CurrentTile.x * tileWidth + tileWidth or
	y + 16 >= global.CurrentTile.y * tileHeight + tileHeight or
	x - 16 <= global.CurrentTile.x * tileWidth or
	y - 16 <= global.CurrentTile.y * tileHeight
	{
		instance_destroy();
	}
}