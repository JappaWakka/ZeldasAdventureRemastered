function Camera_Init()
{
	//Set initial Camera position if we're in the Overworld
	if room == Room_Overworld
	{
		WarpToLocation(global.PlayerSpawn)
		camera_set_view_pos(view,global.CurrentTile.x * ViewWidth,global.CurrentTile.y * ViewHeight);
	}
	//Set view size
	if camera_get_view_width(view) <> ViewWidth || camera_get_view_height(view) <> ViewHeight
	{
		camera_set_view_size(view,ViewWidth,ViewHeight);
	}
	//Set window size
	display_set_gui_size(ViewWidth,ViewHeight)
	window_set_size(ViewWidth * global.WindowScale,ViewHeight * global.WindowScale);
	surface_resize(application_surface,ViewWidth,ViewHeight);
}

function Camera_Pan()
{
	if(instance_exists(Entity_Collision_Player))
	{
		var Current =
		{
			x : camera_get_view_x(view),
			y : camera_get_view_y(view),
		}
		var Desired =
		{
			x : (Entity_Collision_Player.x / 384 - frac(Entity_Collision_Player.x / 384)) * 384,
			y : (Entity_Collision_Player.y / 240 - frac(Entity_Collision_Player.y / 240)) * 240,
		}
		var PanTo =
		{
			x: clamp(Desired.x - Current.x, -global.CameraPanSpeed.x, +global.CameraPanSpeed.x),
			y: clamp(Desired.y - Current.y, -global.CameraPanSpeed.y, +global.CameraPanSpeed.y),
		}
		
		if ((Desired.x != Current.x) || (Desired.y != Current.y))
		{
			//Deactivate old tile, activate new tile
			instance_deactivate_region(global.CurrentTile.x * tileWidth, global.CurrentTile.y * tileHeight, tileWidth, tileHeight,true,true)
			instance_activate_object(Entity_Parent_Player)
			instance_activate_region(Desired.x, Desired.y, tileWidth, tileHeight,true)
			
			//Update Current Tile
			global.CurrentTile.x = Desired.x / tileWidth;
			global.CurrentTile.y = Desired.y / tileHeight;
			
			//Add new tile to visited tiles if it's not already there
			if WorldMap_GetCurrentTileID() != -1
			{
				WorldMap_Add_VisitedTile(global.CurrentTile.x,global.CurrentTile.y)
				global.CurrentMap = WorldMap_GetMapID(WorldMap_GetCurrentTileID())
			}
			else
			{
				global.CurrentMap = Maps.Overworld
			}
			
			//Do camera panning (and fading if necessary)
			if global.FadeBeforePan = false
			{
				camera_set_view_pos(view,Current.x + PanTo.x,Current.y + PanTo.y);
				if ((Desired.x != Current.x + PanTo.x) or (Desired.y != Current.y + PanTo.y))
				{
					global.CameraIsPanning = true;
					if audio_is_playing(global.CurrentDialogue_ID)
					{
						audio_stop_sound(global.CurrentDialogue_ID)
						global.Subtitle = ""
					}
				}
				else
				{
					global.SwitchTracks = true;
					if global.FadeAlpha = 0
					{
						global.CameraIsPanning = false;
					}
				}
			}
			else
			{
				if global.FadeProgress = 3
				{
					if audio_is_playing(global.CurrentDialogue_ID)
					{
						audio_stop_sound(global.CurrentDialogue_ID)
						global.Subtitle = ""
					}
					global.FadeProgress = 0;
					global.FadeSpeed = 8;
				}
				if global.FadeProgress = 1
				{
					camera_set_view_pos(view,Desired.x,Desired.y);
				}
			}
		}
	}
}