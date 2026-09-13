function GetCurrentDepth(player = false)
{
	var TileY = global.CurrentTile.y * tileHeight
	var Depth = 101700
	if player = false
	{
		return Depth - (y - TileY)
	}
	else
	{
		if instance_number(Entity_NPC_YalzanTheStern) > 0
		{
			if y > Entity_NPC_YalzanTheStern.y
			{
				Depth = Entity_NPC_YalzanTheStern.depth - 1
			}
		}
		
		return Depth - (y - TileY)
	}
}