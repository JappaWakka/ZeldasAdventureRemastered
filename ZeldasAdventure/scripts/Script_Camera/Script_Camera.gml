function Camera_Init(Camera = view)
{
	//Set initial Camera position if we're in the Overworld
	if room == Room_Overworld
	{
		camera_set_view_pos(Camera,global.CurrentTile.x * viewWidth,global.CurrentTile.y * viewHeight);
	}
	//Set view size
	if camera_get_view_width(Camera) <> viewWidth || camera_get_view_height(Camera) <> viewHeight
	{
		camera_set_view_size(Camera,viewWidth,viewHeight);
	}
	//Set window size
	window_set_size(viewWidth * global.WindowScale,viewHeight * global.WindowScale);
	surface_resize(application_surface,viewWidth,viewHeight);
}

function Camera_Pan()
{
	if(instance_exists(Entity_Player))
	{
		var Current =
		{
			x : camera_get_view_x(view),
			y : camera_get_view_y(view),
		}
		var Desired =
		{
			x : (Entity_Player.x / 384 - frac(Entity_Player.x / 384)) * 384,
			y : (Entity_Player.y / 240 - frac(Entity_Player.y / 240)) * 240,
		}
		var PanTo =
		{
			x: clamp(Desired.x - Current.x, -global.CameraPanSpeed.x, +global.CameraPanSpeed.x),
			y: clamp(Desired.y - Current.y, -global.CameraPanSpeed.y, +global.CameraPanSpeed.y),
		}
		
		if ((Desired.x != Current.x) || (Desired.y != Current.y))
		{
			camera_set_view_pos(view,Current.x + PanTo.x,Current.y + PanTo.y);
			if ((Desired.x != Current.x + PanTo.x) or (Desired.y != Current.y + PanTo.y))
			{
				global.CameraIsPanning = true;
			}
			else
			{
				global.CurrentTile.x = Desired.x / tileWidth;
				global.CurrentTile.y = Desired.y / tileHeight;
				global.SwitchTracks = true;
				if global.FadeAlpha = 0
				{
					global.CameraIsPanning = false;
				}
			}
		}
	}
}