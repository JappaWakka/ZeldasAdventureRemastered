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
			//Make the enemy sounds happen sooner when switching tiles
			if alarm[0] > 1 * FrameRate
			{
				alarm_set(0,random_range(0.25 * FrameRate,1 * FrameRate))
			}
			
			//Deactivate old tile, activate new tile
			instance_destroy(Entity_Pickup_ItemDrops)
			instance_deactivate_region(global.CurrentTile.x * tileWidth, global.CurrentTile.y * tileHeight, tileWidth, tileHeight,true,true)
			instance_activate_object(Entity_Parent_Player)
			instance_activate_region(Desired.x, Desired.y, tileWidth, tileHeight,true)
			
			//Temporarily prevent ladder from disappearing
			if Register_Registered("PlacedLadder") = true and
			global.CurrentTile.x = 7 && global.CurrentTile.y = 35
			{
				DisableLadderObject = true
				instance_activate_object(Entity_UsedItem_Ladder)
			}
			else
			{
				DisableLadderObject = false
			}
			
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
					if instance_exists(Entity_Parent_Enemy_Keese) = true
					{
						with Entity_Parent_Enemy_Keese
						{
							var CoordinateIndex = floor(FrameIndex / 4)
							if CurrentPath[CoordinateIndex][2] = "wait"
							{
								var randomDelay = random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4])
								
								image_speed = 0
								CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
								CanContinue = false
								EnemyState = EnemyStates.Idle
								FrameIndex = 4
								if randomDelay = 0
								{
									alarm_set(0,4)
								}
								else
								{
									alarm_set(0, randomDelay);
								}
							}
							else
							{
								alarm_set(0, 1);
							}
						}
					}
					if audio_is_playing(SFX_Zelda_Death) = false
					{
						global.SwitchTracks = true;
					}
					if global.FadeAlpha = 0
					{
						global.CameraIsPanning = false;
					}
				}
			}
			else
			{
				//Remember to reset global.CandleUsed after panning
				if global.CandleUsed = true
				{
					ResetCandleDarkness = true
					instance_activate_object(Parent_UseItem_Candle)
				}
				else
				{
					ResetCandleDarkness = false
				}
				//Fade
				if global.CameraIsPanning = false
				{
					global.FadeProgress = 3
					global.CameraIsPanning = true
				}
				if global.FadeProgress = 3
				{
					if audio_is_playing(global.CurrentDialogue_ID)
					{
						audio_stop_sound(global.CurrentDialogue_ID)
						global.Subtitle = ""
					}
					global.FadeProgress = 0;
					global.FadeSpeed = 12;
				}
				if global.FadeProgress = 1
				{
					camera_set_view_pos(view,Desired.x,Desired.y);
				}
				if global.FadeProgress = 2
				{
					if audio_is_playing(SFX_Zelda_Death) = false
					{
						global.SwitchTracks = true;
					}
					global.CameraIsPanning = false;
					
				}
			}
		}
		else
		{
			if global.FadeBeforePan = true
			{
				if global.FadeProgress = 2
				{
					if instance_exists(Entity_Parent_Enemy_Keese) = true
					{
						with Entity_Parent_Enemy_Keese
						{
							var CoordinateIndex = floor(FrameIndex / 4)
							if CurrentPath[CoordinateIndex][2] = "wait"
							{
								var randomDelay = random_range(CurrentPath[CoordinateIndex][3],CurrentPath[CoordinateIndex][4])
								
								image_speed = 0
								CurrentCoordinates = [x + CurrentPath[CoordinateIndex][0], y + CurrentPath[CoordinateIndex][1]]
								CanContinue = false
								EnemyState = EnemyStates.Idle
								FrameIndex = 4
								if randomDelay = 0
								{
									alarm_set(0,4)
								}
								else
								{
									alarm_set(0, randomDelay);
								}
							}
							else
							{
								alarm_set(0, 1);
							}
						}
					}
					global.CameraIsPanning = false;
				}
			}
			//Reset global.CandleUsed after panning
			if ResetCandleDarkness = true && global.CandleUsed = true
			{
				global.CandleUsed = false
				instance_deactivate_object(Parent_UseItem_Candle)
				ResetCandleDarkness = false
			}
			//Disable Ladder Object after panning
			if DisableLadderObject = true && global.CurrentTile.x != 7 && global.CurrentTile.y != 35
			{
				instance_deactivate_object(Entity_UsedItem_Ladder)
				DisableLadderObject = false
			}
		}
	}
}