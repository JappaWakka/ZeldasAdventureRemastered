var TilesStartPositionX = 66
var TilesStartPositionY = 59

var TileSeparatorX = 8
var TileSeparatorY = 5

if OpeningClosing = true
{
	if global.FadeProgress > 0
	{
		if Alpha = 0
		{
			Alpha = 255;
			if Obj_InventoryManager.Alpha = 0
			{
				instance_deactivate_object(Entity_Parent_Player)
				if object_exists(Entity_Parent_NPC) = true
				{
					with(Entity_Parent_NPC)
					{
						image_speed = 0;
						visible = false;
					}
				}
				instance_deactivate_layer("Enemies_BelowForeground");
				instance_deactivate_layer("Enemies_AboveForeground");
				instance_deactivate_layer("TemporaryProgressionBlocker_Spikes");
				instance_deactivate_object(Entity_Parent_NPC_Path);
			}
		}
		else
		{
			Alpha = 0;
			if Obj_InventoryManager.Alpha = 0
			{
				instance_activate_object(Entity_Parent_Player)
				if object_exists(Entity_Parent_NPC) = true
				{
					with(Entity_Parent_NPC)
					{
						image_speed = ImageSpeed;
						visible = true;
					}
				}
				instance_activate_region(global.CurrentTile.x * tileWidth, global.CurrentTile.y *tileHeight, tileWidth, tileHeight,true);
				instance_activate_object(Entity_Parent_NPC_Path);
			}
		}
		OpeningClosing = false;
	}
};
if BackgroundIndex = -1
{
	BackgroundIndex = global.CurrentMap
	TitleIndex = global.CurrentMap
}
	
draw_sprite_ext(WorldMap_Background,BackgroundIndex,0,0,1,1,0,c_white,Alpha);

//Draw Map Title
if Alpha = 255
{
	draw_set_font(Font_WorldMap_Title);
	draw_set_color(make_color_rgb(55,23,16));
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext(90,53,UI_WorldMap_Title_Text(TitleIndex),12,60)
	draw_text_ext(90,53,UI_WorldMap_Title_Text(TitleIndex),12,60) // Make it extra thick
	
	//Reset Font Properties
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

//Draw Compass
if Alpha = 255
{
	draw_set_font(Font_WorldMap_Compass);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	//North
	draw_text(319,44,UI_WorldMap_Compass_Text(global.Directions.North))
	
	//West
	draw_text(288,71,UI_WorldMap_Compass_Text(global.Directions.West))
	
	//East
	draw_text(346,71,UI_WorldMap_Compass_Text(global.Directions.East))
	
	//South
	draw_text(319,99,UI_WorldMap_Compass_Text(global.Directions.South))
	
	//Reset Font Properties
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
//Draw Tiles
if Alpha = 255
{
	for (var i = 0; i <= array_length(global.WorldMap_Tiles)-1; i++)
	{
		var CompassItem = -1
		var UnderworldMapItem = -1
		switch TitleIndex
		{
			case Maps.Overworld:
				if global.WorldMap_Tiles[i][0] = TitleIndex and WorldMap_HasVisitedTile(global.WorldMap_Tiles[i][3]) = true
				{
					if WorldMap_GetCurrentTileID() = global.WorldMap_Tiles[i][3]
					{
						draw_sprite(WorldMap_TileIcons, 1, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
					}
					else
					{
						draw_sprite(WorldMap_TileIcons, 0, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
					}
				}
				break;
			case Maps.Shrine1:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
			case Maps.Shrine2:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
			case Maps.Shrine3:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
			case Maps.Shrine4:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
			case Maps.Shrine5:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
			case Maps.Shrine6:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
			case Maps.Shrine7:
				CompassItem = Treasures.Compass_Earth
				UnderworldMapItem = Treasures.UnderworldMap_Earth
				break;
		}
		if CompassItem != -1 and UnderworldMapItem != -1
		{
			if global.WorldMap_Tiles[i][0] = TitleIndex
			{
				if WorldMap_GetCurrentTileID() = global.WorldMap_Tiles[i][3]
				{
					draw_sprite(WorldMap_TileIcons, 5, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
				}
				else
				{
					if WorldMap_HasVisitedTile(global.WorldMap_Tiles[i][3]) = true
					{
						if WorldMap_GetTileType(global.WorldMap_Tiles[i][3]) = MapTileType.SignRoom and Item_FindIndex(CompassItem,0) != -1
						{
							draw_sprite(WorldMap_TileIcons, 4, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
						}
						else
						{
							draw_sprite(WorldMap_TileIcons, 3, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
						}
					}
					else
					{
						if Item_FindIndex(UnderworldMapItem,0) != -1
						{
							if WorldMap_GetTileType(global.WorldMap_Tiles[i][3]) = MapTileType.SignRoom and Item_FindIndex(CompassItem,0) != -1
							{
								draw_sprite(WorldMap_TileIcons, 4, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
							}
							else
							{
								draw_sprite(WorldMap_TileIcons, 2, TilesStartPositionX + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[0] * TileSeparatorX, TilesStartPositionY + WorldMap_GetPositionOnMap(global.WorldMap_Tiles[i][3])[1] * TileSeparatorY);
							}
						}
					}
				}
			}
		}
	}
}
