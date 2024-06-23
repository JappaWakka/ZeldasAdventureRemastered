// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IsPlayerOnSameTile()
{
	if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
	y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
	{
		return true
	}
	else
	{
		return false
	}
}

function IsPlayerOnSameTile_Enemy()
{
	if OriginX >= global.CurrentTile.x * tileWidth && OriginX <= global.CurrentTile.x * tileWidth + tileWidth &&
	OriginY >= global.CurrentTile.y * tileHeight && OriginY <= global.CurrentTile.y * tileHeight + tileHeight
	{
		return true
	}
	else
	{
		return false
	}
}