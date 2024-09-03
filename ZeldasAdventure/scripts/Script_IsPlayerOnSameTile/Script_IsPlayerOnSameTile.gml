// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function IsPlayerOnSameTile()
{
	var PlayerTile =
	{
		x : global.CurrentTile.x * tileWidth,
		y : global.CurrentTile.y * tileWidth
	}
	if instance_number(Entity_Parent_Player) > 0
	{
		PlayerTile =
		{
			x : (Entity_Collision_Player.x / tileWidth - frac(Entity_Collision_Player.x / tileWidth)) * tileWidth,
			y : (Entity_Collision_Player.y / tileHeight - frac(Entity_Collision_Player.y / tileHeight)) * tileHeight
		}
	}
	
	if x >= PlayerTile.x && x < PlayerTile.x + tileWidth &&
	y >= PlayerTile.y && y < PlayerTile.y + tileHeight &&
	global.CameraIsPanning = false
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
	var PlayerTile =
	{
		x : global.CurrentTile.x * tileWidth,
		y : global.CurrentTile.y * tileWidth
	}
	if instance_number(Entity_Parent_Player) > 0
	{
		PlayerTile =
		{
			x : (Entity_Collision_Player.x / tileWidth - frac(Entity_Collision_Player.x / tileWidth)) * tileWidth,
			y : (Entity_Collision_Player.y / tileHeight - frac(Entity_Collision_Player.y / tileHeight)) * tileHeight
		}
	}
	
	if OriginX >= PlayerTile.x && OriginX < PlayerTile.x + tileWidth &&
	OriginY >= PlayerTile.y  && OriginY < PlayerTile.y + tileHeight &&
	global.CameraIsPanning = false
	{
		return true
	}
	else
	{
		return false
	}
}